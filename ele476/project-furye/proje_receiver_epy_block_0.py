import numpy as np
import time
from gnuradio import gr
import pmt

class blk(gr.sync_block):
    def __init__(self, threshold=0.00001, debounce_interval=0.2):
        super().__init__(
            name='DTMF Decoder',
            in_sig=[np.float32]*8,
            out_sig=None
        )

        self.dtmf_map = [
            ['1', '2', '3', 'A'],
            ['4', '5', '6', 'B'],
            ['7', '8', '9', 'C'],
            ['*', '0', '#', 'D']
        ]

        self.threshold = threshold
        self.debounce_interval = debounce_interval
        self.history = ""
        self.current_digit = None
        self.ready = True
        self.last_time = 0

        self.message_port_register_out(pmt.intern("label_out"))

    def work(self, input_items, output_items):
        energies = [np.mean(items) for items in input_items]
        low_energies = energies[:4]
        high_energies = energies[4:]

        low_active = [i for i, val in enumerate(low_energies) if val > self.threshold]
        high_active = [i for i, val in enumerate(high_energies) if val > self.threshold]

        current_time = time.time()

        if len(low_active) == 1 and len(high_active) == 1:
            digit = self.dtmf_map[low_active[0]][high_active[0]]

            if self.ready and digit != self.current_digit and (current_time - self.last_time > self.debounce_interval):
                self.history += digit
                msg = pmt.cons(pmt.intern("text"), pmt.to_pmt(self.history))
                self.message_port_pub(pmt.intern("label_out"), msg)

                self.current_digit = digit
                self.ready = False
                self.last_time = current_time  # zaman güncelle
        else:
            self.ready = True
            self.current_digit = None

        return len(input_items[0])
