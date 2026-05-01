#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#
# SPDX-License-Identifier: GPL-3.0
#
# GNU Radio Python Flow Graph
# Title: Basic Filter Examples
# Author: Ettus Research
# Description: Example usage of basic filters
# GNU Radio version: 3.10.8.0

from PyQt5 import Qt
from gnuradio import qtgui
from gnuradio import analog
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
import sip



class filters_basic(gr.top_block, Qt.QWidget):

    def __init__(self):
        gr.top_block.__init__(self, "Basic Filter Examples", catch_exceptions=True)
        Qt.QWidget.__init__(self)
        self.setWindowTitle("Basic Filter Examples")
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

        self.settings = Qt.QSettings("GNU Radio", "filters_basic")

        try:
            geometry = self.settings.value("geometry")
            if geometry:
                self.restoreGeometry(geometry)
        except BaseException as exc:
            print(f"Qt GUI: Could not restore geometry: {str(exc)}", file=sys.stderr)

        ##################################################
        # Variables
        ##################################################
        self.transition = transition = 50e3
        self.sine_freq = sine_freq = 300e3
        self.samp_rate = samp_rate = 1e6
        self.noise_amp = noise_amp = .1
        self.low_cutoff = low_cutoff = 100e3
        self.high_cutoff = high_cutoff = 200e3

        ##################################################
        # Blocks
        ##################################################

        self._transition_range = Range(1e3, 100e3, 1, 50e3, 200)
        self._transition_win = RangeWidget(self._transition_range, self.set_transition, "Transition", "counter_slider", float, QtCore.Qt.Horizontal)
        self.top_grid_layout.addWidget(self._transition_win, 1, 4, 1, 2)
        for r in range(1, 2):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(4, 6):
            self.top_grid_layout.setColumnStretch(c, 1)
        self._sine_freq_range = Range(0, 1e6, 1e3, 300e3, 200)
        self._sine_freq_win = RangeWidget(self._sine_freq_range, self.set_sine_freq, "Sine Frequency", "counter_slider", float, QtCore.Qt.Horizontal)
        self.top_grid_layout.addWidget(self._sine_freq_win, 0, 0, 1, 3)
        for r in range(0, 1):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(0, 3):
            self.top_grid_layout.setColumnStretch(c, 1)
        self._noise_amp_range = Range(0, 1, .1, .1, 200)
        self._noise_amp_win = RangeWidget(self._noise_amp_range, self.set_noise_amp, "Noise", "counter_slider", float, QtCore.Qt.Horizontal)
        self.top_grid_layout.addWidget(self._noise_amp_win, 0, 3, 1, 3)
        for r in range(0, 1):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(3, 6):
            self.top_grid_layout.setColumnStretch(c, 1)
        self._low_cutoff_range = Range(0, samp_rate/2, 1, 100e3, 200)
        self._low_cutoff_win = RangeWidget(self._low_cutoff_range, self.set_low_cutoff, "Low Cutoff", "counter_slider", float, QtCore.Qt.Horizontal)
        self.top_grid_layout.addWidget(self._low_cutoff_win, 1, 0, 1, 2)
        for r in range(1, 2):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(0, 2):
            self.top_grid_layout.setColumnStretch(c, 1)
        self._high_cutoff_range = Range(0, samp_rate/2, 1, 200e3, 200)
        self._high_cutoff_win = RangeWidget(self._high_cutoff_range, self.set_high_cutoff, "High Cutoff", "counter_slider", float, QtCore.Qt.Horizontal)
        self.top_grid_layout.addWidget(self._high_cutoff_win, 1, 2, 1, 2)
        for r in range(1, 2):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(2, 4):
            self.top_grid_layout.setColumnStretch(c, 1)
        self.qtgui_freq_sink_x_0 = qtgui.freq_sink_f(
            1024, #size
            window.WIN_BLACKMAN_hARRIS, #wintype
            0, #fc
            samp_rate, #bw
            "Spectrum", #name
            1,
            None # parent
        )
        self.qtgui_freq_sink_x_0.set_update_time(0.10)
        self.qtgui_freq_sink_x_0.set_y_axis((-140), 10)
        self.qtgui_freq_sink_x_0.set_y_label('Relative Gain', 'dB')
        self.qtgui_freq_sink_x_0.set_trigger_mode(qtgui.TRIG_MODE_FREE, 0.0, 0, "")
        self.qtgui_freq_sink_x_0.enable_autoscale(False)
        self.qtgui_freq_sink_x_0.enable_grid(False)
        self.qtgui_freq_sink_x_0.set_fft_average(0.2)
        self.qtgui_freq_sink_x_0.enable_axis_labels(True)
        self.qtgui_freq_sink_x_0.enable_control_panel(False)
        self.qtgui_freq_sink_x_0.set_fft_window_normalized(False)


        self.qtgui_freq_sink_x_0.set_plot_pos_half(not False)

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
                self.qtgui_freq_sink_x_0.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_freq_sink_x_0.set_line_label(i, labels[i])
            self.qtgui_freq_sink_x_0.set_line_width(i, widths[i])
            self.qtgui_freq_sink_x_0.set_line_color(i, colors[i])
            self.qtgui_freq_sink_x_0.set_line_alpha(i, alphas[i])

        self._qtgui_freq_sink_x_0_win = sip.wrapinstance(self.qtgui_freq_sink_x_0.qwidget(), Qt.QWidget)
        self.top_grid_layout.addWidget(self._qtgui_freq_sink_x_0_win, 2, 0, 1, 6)
        for r in range(2, 3):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(0, 6):
            self.top_grid_layout.setColumnStretch(c, 1)
        self.blocks_throttle_0 = blocks.throttle(gr.sizeof_gr_complex*1, samp_rate,True)
        self.blocks_complex_to_float_0 = blocks.complex_to_float(1)
        self.blocks_add_xx_0 = blocks.add_vcc(1)
        self.band_reject_filter_0 = filter.interp_fir_filter_fff(
            1,
            firdes.band_reject(
                1,
                samp_rate,
                low_cutoff,
                high_cutoff,
                transition,
                window.WIN_HAMMING,
                6.76))
        self.analog_sig_source_x_0 = analog.sig_source_c(samp_rate, analog.GR_COS_WAVE, sine_freq, .7, 0, 0)
        self.analog_noise_source_x_0 = analog.noise_source_c(analog.GR_GAUSSIAN, noise_amp, 0)


        ##################################################
        # Connections
        ##################################################
        self.connect((self.analog_noise_source_x_0, 0), (self.blocks_add_xx_0, 1))
        self.connect((self.analog_sig_source_x_0, 0), (self.blocks_add_xx_0, 0))
        self.connect((self.band_reject_filter_0, 0), (self.qtgui_freq_sink_x_0, 0))
        self.connect((self.blocks_add_xx_0, 0), (self.blocks_throttle_0, 0))
        self.connect((self.blocks_complex_to_float_0, 0), (self.band_reject_filter_0, 0))
        self.connect((self.blocks_throttle_0, 0), (self.blocks_complex_to_float_0, 0))


    def closeEvent(self, event):
        self.settings = Qt.QSettings("GNU Radio", "filters_basic")
        self.settings.setValue("geometry", self.saveGeometry())
        self.stop()
        self.wait()

        event.accept()

    def get_transition(self):
        return self.transition

    def set_transition(self, transition):
        self.transition = transition
        self.band_reject_filter_0.set_taps(firdes.band_reject(1, self.samp_rate, self.low_cutoff, self.high_cutoff, self.transition, window.WIN_HAMMING, 6.76))

    def get_sine_freq(self):
        return self.sine_freq

    def set_sine_freq(self, sine_freq):
        self.sine_freq = sine_freq
        self.analog_sig_source_x_0.set_frequency(self.sine_freq)

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.analog_sig_source_x_0.set_sampling_freq(self.samp_rate)
        self.band_reject_filter_0.set_taps(firdes.band_reject(1, self.samp_rate, self.low_cutoff, self.high_cutoff, self.transition, window.WIN_HAMMING, 6.76))
        self.blocks_throttle_0.set_sample_rate(self.samp_rate)
        self.qtgui_freq_sink_x_0.set_frequency_range(0, self.samp_rate)

    def get_noise_amp(self):
        return self.noise_amp

    def set_noise_amp(self, noise_amp):
        self.noise_amp = noise_amp
        self.analog_noise_source_x_0.set_amplitude(self.noise_amp)

    def get_low_cutoff(self):
        return self.low_cutoff

    def set_low_cutoff(self, low_cutoff):
        self.low_cutoff = low_cutoff
        self.band_reject_filter_0.set_taps(firdes.band_reject(1, self.samp_rate, self.low_cutoff, self.high_cutoff, self.transition, window.WIN_HAMMING, 6.76))

    def get_high_cutoff(self):
        return self.high_cutoff

    def set_high_cutoff(self, high_cutoff):
        self.high_cutoff = high_cutoff
        self.band_reject_filter_0.set_taps(firdes.band_reject(1, self.samp_rate, self.low_cutoff, self.high_cutoff, self.transition, window.WIN_HAMMING, 6.76))




def main(top_block_cls=filters_basic, options=None):

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
