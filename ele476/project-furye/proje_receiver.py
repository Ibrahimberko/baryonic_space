#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#
# SPDX-License-Identifier: GPL-3.0
#
# GNU Radio Python Flow Graph
# Title: Not titled yet
# Author: ibrbe
# GNU Radio version: 3.10.8.0

from PyQt5 import Qt
from gnuradio import qtgui
from gnuradio import audio
from gnuradio import blocks
from gnuradio import filter
from gnuradio.filter import firdes
from gnuradio import gr
from gnuradio.fft import window
import sys
import signal
from PyQt5 import Qt
from argparse import ArgumentParser
from gnuradio.eng_arg import eng_float, intx
from gnuradio import eng_notation
from gnuradio.qtgui import Range, RangeWidget
from PyQt5 import QtCore
import proje_receiver_epy_block_0 as epy_block_0  # embedded python block
import sip



class proje_receiver(gr.top_block, Qt.QWidget):

    def __init__(self):
        gr.top_block.__init__(self, "Not titled yet", catch_exceptions=True)
        Qt.QWidget.__init__(self)
        self.setWindowTitle("Not titled yet")
        qtgui.util.check_set_qss()
        try:
            self.setWindowIcon(Qt.QIcon.fromTheme('gnuradio-grc'))
        except BaseException as exc:
            print(f"Qt GUI: Could not set Icon: {str(exc)}", file=sys.stderr)
        self.top_scroll_layout = Qt.QVBoxLayout()
        self.setLayout(self.top_scroll_layout)
        self.top_scroll = Qt.QScrollArea()
        self.top_scroll.setFrameStyle(Qt.QFrame.NoFrame)
        self.top_scroll_layout.addWidget(self.top_scroll)
        self.top_scroll.setWidgetResizable(True)
        self.top_widget = Qt.QWidget()
        self.top_scroll.setWidget(self.top_widget)
        self.top_layout = Qt.QVBoxLayout(self.top_widget)
        self.top_grid_layout = Qt.QGridLayout()
        self.top_layout.addLayout(self.top_grid_layout)

        self.settings = Qt.QSettings("GNU Radio", "proje_receiver")

        try:
            geometry = self.settings.value("geometry")
            if geometry:
                self.restoreGeometry(geometry)
        except BaseException as exc:
            print(f"Qt GUI: Could not restore geometry: {str(exc)}", file=sys.stderr)

        ##################################################
        # Variables
        ##################################################
        self.threshold = threshold = 1e-05
        self.samp_rate = samp_rate = 44100
        self.debounce_interval = debounce_interval = 0.5

        ##################################################
        # Blocks
        ##################################################

        self._threshold_range = Range(1e-07, 1e-04, 5e-06, 1e-05, 200)
        self._threshold_win = RangeWidget(self._threshold_range, self.set_threshold, "'threshold'", "counter_slider", float, QtCore.Qt.Horizontal)
        self.top_layout.addWidget(self._threshold_win)
        self._debounce_interval_range = Range(0.1, 1, 0.1, 0.5, 200)
        self._debounce_interval_win = RangeWidget(self._debounce_interval_range, self.set_debounce_interval, "'debounce_interval'", "counter_slider", float, QtCore.Qt.Horizontal)
        self.top_layout.addWidget(self._debounce_interval_win)
        self.qtgui_freq_sink_x_1 = qtgui.freq_sink_f(
            1024, #size
            window.WIN_HAMMING, #wintype
            0, #fc
            200000, #bw
            "", #name
            1,
            None # parent
        )
        self.qtgui_freq_sink_x_1.set_update_time(0.10)
        self.qtgui_freq_sink_x_1.set_y_axis((-70), 10)
        self.qtgui_freq_sink_x_1.set_y_label('Relative Gain', 'dB')
        self.qtgui_freq_sink_x_1.set_trigger_mode(qtgui.TRIG_MODE_FREE, 0.0, 0, "")
        self.qtgui_freq_sink_x_1.enable_autoscale(True)
        self.qtgui_freq_sink_x_1.enable_grid(False)
        self.qtgui_freq_sink_x_1.set_fft_average(0.2)
        self.qtgui_freq_sink_x_1.enable_axis_labels(True)
        self.qtgui_freq_sink_x_1.enable_control_panel(False)
        self.qtgui_freq_sink_x_1.set_fft_window_normalized(True)


        self.qtgui_freq_sink_x_1.set_plot_pos_half(not True)

        labels = ['', '', '', '', '',
            '', '', '', '', '']
        widths = [1, 1, 1, 1, 1,
            1, 1, 1, 1, 1]
        colors = ["blue", "red", "green", "black", "cyan",
            "magenta", "yellow", "dark red", "dark green", "dark blue"]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
            1.0, 1.0, 1.0, 1.0, 1.0]

        for i in range(1):
            if len(labels[i]) == 0:
                self.qtgui_freq_sink_x_1.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_freq_sink_x_1.set_line_label(i, labels[i])
            self.qtgui_freq_sink_x_1.set_line_width(i, widths[i])
            self.qtgui_freq_sink_x_1.set_line_color(i, colors[i])
            self.qtgui_freq_sink_x_1.set_line_alpha(i, alphas[i])

        self._qtgui_freq_sink_x_1_win = sip.wrapinstance(self.qtgui_freq_sink_x_1.qwidget(), Qt.QWidget)
        self.top_layout.addWidget(self._qtgui_freq_sink_x_1_win)
        self.qtgui_edit_box_msg_0 = qtgui.edit_box_msg(qtgui.STRING, "Bekleniyor...", 'DTFM Tuşu', True, True, 'text', None)
        self._qtgui_edit_box_msg_0_win = sip.wrapinstance(self.qtgui_edit_box_msg_0.qwidget(), Qt.QWidget)
        self.top_layout.addWidget(self._qtgui_edit_box_msg_0_win)
        self.low_pass_filter_0_0_0_2_1 = filter.fir_filter_fff(
            1,
            firdes.low_pass(
                1,
                samp_rate,
                20,
                10,
                window.WIN_HAMMING,
                6.76))
        self.low_pass_filter_0_0_0_2_0 = filter.fir_filter_fff(
            1,
            firdes.low_pass(
                1,
                samp_rate,
                20,
                10,
                window.WIN_HAMMING,
                6.76))
        self.low_pass_filter_0_0_0_2 = filter.fir_filter_fff(
            1,
            firdes.low_pass(
                1,
                samp_rate,
                20,
                10,
                window.WIN_HAMMING,
                6.76))
        self.low_pass_filter_0_0_0_1 = filter.fir_filter_fff(
            1,
            firdes.low_pass(
                1,
                samp_rate,
                20,
                10,
                window.WIN_HAMMING,
                6.76))
        self.low_pass_filter_0_0_0_0 = filter.fir_filter_fff(
            1,
            firdes.low_pass(
                1,
                samp_rate,
                20,
                10,
                window.WIN_HAMMING,
                6.76))
        self.low_pass_filter_0_0_0 = filter.fir_filter_fff(
            1,
            firdes.low_pass(
                1,
                samp_rate,
                20,
                10,
                window.WIN_HAMMING,
                6.76))
        self.low_pass_filter_0_0 = filter.fir_filter_fff(
            1,
            firdes.low_pass(
                1,
                samp_rate,
                20,
                10,
                window.WIN_HAMMING,
                6.76))
        self.low_pass_filter_0 = filter.fir_filter_fff(
            1,
            firdes.low_pass(
                1,
                samp_rate,
                20,
                10,
                window.WIN_HAMMING,
                6.76))
        self.epy_block_0 = epy_block_0.blk(threshold=threshold, debounce_interval=debounce_interval)
        self.blocks_multiply_xx_0_0_0_0_0_0_0_0 = blocks.multiply_vff(1)
        self.blocks_multiply_xx_0_0_0_0_0_0_0 = blocks.multiply_vff(1)
        self.blocks_multiply_xx_0_0_0_0_0_0 = blocks.multiply_vff(1)
        self.blocks_multiply_xx_0_0_0_0_0 = blocks.multiply_vff(1)
        self.blocks_multiply_xx_0_0_0_0 = blocks.multiply_vff(1)
        self.blocks_multiply_xx_0_0_0 = blocks.multiply_vff(1)
        self.blocks_multiply_xx_0_0 = blocks.multiply_vff(1)
        self.blocks_multiply_xx_0 = blocks.multiply_vff(1)
        self.band_pass_filter_0_1_1 = filter.fir_filter_fff(
            1,
            firdes.band_pass(
                1,
                samp_rate,
                1623,
                1643,
                20,
                window.WIN_HAMMING,
                6.76))
        self.band_pass_filter_0_1_0_1 = filter.fir_filter_fff(
            1,
            firdes.band_pass(
                1,
                samp_rate,
                1199,
                1219,
                20,
                window.WIN_HAMMING,
                6.76))
        self.band_pass_filter_0_1_0_0_0 = filter.fir_filter_fff(
            1,
            firdes.band_pass(
                1,
                samp_rate,
                760,
                780,
                20,
                window.WIN_HAMMING,
                6.76))
        self.band_pass_filter_0_1_0_0 = filter.fir_filter_fff(
            1,
            firdes.band_pass(
                1,
                samp_rate,
                842,
                862,
                20,
                window.WIN_HAMMING,
                6.76))
        self.band_pass_filter_0_1_0 = filter.fir_filter_fff(
            1,
            firdes.band_pass(
                1,
                samp_rate,
                1326,
                1346,
                20,
                window.WIN_HAMMING,
                6.76))
        self.band_pass_filter_0_1 = filter.fir_filter_fff(
            1,
            firdes.band_pass(
                1,
                samp_rate,
                1467,
                1487,
                20,
                window.WIN_HAMMING,
                6.76))
        self.band_pass_filter_0_0 = filter.fir_filter_fff(
            1,
            firdes.band_pass(
                1,
                samp_rate,
                931,
                951,
                20,
                window.WIN_HAMMING,
                6.76))
        self.band_pass_filter_0 = filter.fir_filter_fff(
            1,
            firdes.band_pass(
                1,
                samp_rate,
                687,
                707,
                20,
                window.WIN_HAMMING,
                6.76))
        self.audio_source_0 = audio.source(44100, 'Mik', True)


        ##################################################
        # Connections
        ##################################################
        self.msg_connect((self.epy_block_0, 'label_out'), (self.qtgui_edit_box_msg_0, 'val'))
        self.connect((self.audio_source_0, 0), (self.band_pass_filter_0, 0))
        self.connect((self.audio_source_0, 0), (self.band_pass_filter_0_0, 0))
        self.connect((self.audio_source_0, 0), (self.band_pass_filter_0_1, 0))
        self.connect((self.audio_source_0, 0), (self.band_pass_filter_0_1_0, 0))
        self.connect((self.audio_source_0, 0), (self.band_pass_filter_0_1_0_0, 0))
        self.connect((self.audio_source_0, 0), (self.band_pass_filter_0_1_0_0_0, 0))
        self.connect((self.audio_source_0, 0), (self.band_pass_filter_0_1_0_1, 0))
        self.connect((self.audio_source_0, 0), (self.band_pass_filter_0_1_1, 0))
        self.connect((self.audio_source_0, 0), (self.qtgui_freq_sink_x_1, 0))
        self.connect((self.band_pass_filter_0, 0), (self.blocks_multiply_xx_0, 1))
        self.connect((self.band_pass_filter_0, 0), (self.blocks_multiply_xx_0, 0))
        self.connect((self.band_pass_filter_0_0, 0), (self.blocks_multiply_xx_0_0_0_0, 0))
        self.connect((self.band_pass_filter_0_0, 0), (self.blocks_multiply_xx_0_0_0_0, 1))
        self.connect((self.band_pass_filter_0_1, 0), (self.blocks_multiply_xx_0_0_0_0_0_0_0, 1))
        self.connect((self.band_pass_filter_0_1, 0), (self.blocks_multiply_xx_0_0_0_0_0_0_0, 0))
        self.connect((self.band_pass_filter_0_1_0, 0), (self.blocks_multiply_xx_0_0_0_0_0_0, 0))
        self.connect((self.band_pass_filter_0_1_0, 0), (self.blocks_multiply_xx_0_0_0_0_0_0, 1))
        self.connect((self.band_pass_filter_0_1_0_0, 0), (self.blocks_multiply_xx_0_0_0, 0))
        self.connect((self.band_pass_filter_0_1_0_0, 0), (self.blocks_multiply_xx_0_0_0, 1))
        self.connect((self.band_pass_filter_0_1_0_0_0, 0), (self.blocks_multiply_xx_0_0, 1))
        self.connect((self.band_pass_filter_0_1_0_0_0, 0), (self.blocks_multiply_xx_0_0, 0))
        self.connect((self.band_pass_filter_0_1_0_1, 0), (self.blocks_multiply_xx_0_0_0_0_0, 1))
        self.connect((self.band_pass_filter_0_1_0_1, 0), (self.blocks_multiply_xx_0_0_0_0_0, 0))
        self.connect((self.band_pass_filter_0_1_1, 0), (self.blocks_multiply_xx_0_0_0_0_0_0_0_0, 1))
        self.connect((self.band_pass_filter_0_1_1, 0), (self.blocks_multiply_xx_0_0_0_0_0_0_0_0, 0))
        self.connect((self.blocks_multiply_xx_0, 0), (self.low_pass_filter_0, 0))
        self.connect((self.blocks_multiply_xx_0_0, 0), (self.low_pass_filter_0_0, 0))
        self.connect((self.blocks_multiply_xx_0_0_0, 0), (self.low_pass_filter_0_0_0, 0))
        self.connect((self.blocks_multiply_xx_0_0_0_0, 0), (self.low_pass_filter_0_0_0_0, 0))
        self.connect((self.blocks_multiply_xx_0_0_0_0_0, 0), (self.low_pass_filter_0_0_0_1, 0))
        self.connect((self.blocks_multiply_xx_0_0_0_0_0_0, 0), (self.low_pass_filter_0_0_0_2, 0))
        self.connect((self.blocks_multiply_xx_0_0_0_0_0_0_0, 0), (self.low_pass_filter_0_0_0_2_0, 0))
        self.connect((self.blocks_multiply_xx_0_0_0_0_0_0_0_0, 0), (self.low_pass_filter_0_0_0_2_1, 0))
        self.connect((self.low_pass_filter_0, 0), (self.epy_block_0, 0))
        self.connect((self.low_pass_filter_0_0, 0), (self.epy_block_0, 1))
        self.connect((self.low_pass_filter_0_0_0, 0), (self.epy_block_0, 2))
        self.connect((self.low_pass_filter_0_0_0_0, 0), (self.epy_block_0, 3))
        self.connect((self.low_pass_filter_0_0_0_1, 0), (self.epy_block_0, 4))
        self.connect((self.low_pass_filter_0_0_0_2, 0), (self.epy_block_0, 5))
        self.connect((self.low_pass_filter_0_0_0_2_0, 0), (self.epy_block_0, 6))
        self.connect((self.low_pass_filter_0_0_0_2_1, 0), (self.epy_block_0, 7))


    def closeEvent(self, event):
        self.settings = Qt.QSettings("GNU Radio", "proje_receiver")
        self.settings.setValue("geometry", self.saveGeometry())
        self.stop()
        self.wait()

        event.accept()

    def get_threshold(self):
        return self.threshold

    def set_threshold(self, threshold):
        self.threshold = threshold
        self.epy_block_0.threshold = self.threshold

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.band_pass_filter_0.set_taps(firdes.band_pass(1, self.samp_rate, 687, 707, 20, window.WIN_HAMMING, 6.76))
        self.band_pass_filter_0_0.set_taps(firdes.band_pass(1, self.samp_rate, 931, 951, 20, window.WIN_HAMMING, 6.76))
        self.band_pass_filter_0_1.set_taps(firdes.band_pass(1, self.samp_rate, 1467, 1487, 20, window.WIN_HAMMING, 6.76))
        self.band_pass_filter_0_1_0.set_taps(firdes.band_pass(1, self.samp_rate, 1326, 1346, 20, window.WIN_HAMMING, 6.76))
        self.band_pass_filter_0_1_0_0.set_taps(firdes.band_pass(1, self.samp_rate, 842, 862, 20, window.WIN_HAMMING, 6.76))
        self.band_pass_filter_0_1_0_0_0.set_taps(firdes.band_pass(1, self.samp_rate, 760, 780, 20, window.WIN_HAMMING, 6.76))
        self.band_pass_filter_0_1_0_1.set_taps(firdes.band_pass(1, self.samp_rate, 1199, 1219, 20, window.WIN_HAMMING, 6.76))
        self.band_pass_filter_0_1_1.set_taps(firdes.band_pass(1, self.samp_rate, 1623, 1643, 20, window.WIN_HAMMING, 6.76))
        self.low_pass_filter_0.set_taps(firdes.low_pass(1, self.samp_rate, 20, 10, window.WIN_HAMMING, 6.76))
        self.low_pass_filter_0_0.set_taps(firdes.low_pass(1, self.samp_rate, 20, 10, window.WIN_HAMMING, 6.76))
        self.low_pass_filter_0_0_0.set_taps(firdes.low_pass(1, self.samp_rate, 20, 10, window.WIN_HAMMING, 6.76))
        self.low_pass_filter_0_0_0_0.set_taps(firdes.low_pass(1, self.samp_rate, 20, 10, window.WIN_HAMMING, 6.76))
        self.low_pass_filter_0_0_0_1.set_taps(firdes.low_pass(1, self.samp_rate, 20, 10, window.WIN_HAMMING, 6.76))
        self.low_pass_filter_0_0_0_2.set_taps(firdes.low_pass(1, self.samp_rate, 20, 10, window.WIN_HAMMING, 6.76))
        self.low_pass_filter_0_0_0_2_0.set_taps(firdes.low_pass(1, self.samp_rate, 20, 10, window.WIN_HAMMING, 6.76))
        self.low_pass_filter_0_0_0_2_1.set_taps(firdes.low_pass(1, self.samp_rate, 20, 10, window.WIN_HAMMING, 6.76))

    def get_debounce_interval(self):
        return self.debounce_interval

    def set_debounce_interval(self, debounce_interval):
        self.debounce_interval = debounce_interval
        self.epy_block_0.debounce_interval = self.debounce_interval




def main(top_block_cls=proje_receiver, options=None):

    qapp = Qt.QApplication(sys.argv)

    tb = top_block_cls()

    tb.start()

    tb.show()

    def sig_handler(sig=None, frame=None):
        tb.stop()
        tb.wait()

        Qt.QApplication.quit()

    signal.signal(signal.SIGINT, sig_handler)
    signal.signal(signal.SIGTERM, sig_handler)

    timer = Qt.QTimer()
    timer.start(500)
    timer.timeout.connect(lambda: None)

    qapp.exec_()

if __name__ == '__main__':
    main()
