#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#
# SPDX-License-Identifier: GPL-3.0
#
# GNU Radio Python Flow Graph
# Title: Not titled yet
# GNU Radio version: 3.10.8.0

from PyQt5 import Qt
from gnuradio import qtgui
from gnuradio import analog
from gnuradio import audio
from gnuradio import blocks
from gnuradio import gr
from gnuradio.filter import firdes
from gnuradio.fft import window
import sys
import signal
from PyQt5 import Qt
from argparse import ArgumentParser
from gnuradio.eng_arg import eng_float, intx
from gnuradio import eng_notation
import sip
from PyQt5.QtCore import QTimer


class projetransmit2(gr.top_block, Qt.QWidget):

    def update_freq_amp(self):
        self.set_amplitude(
            (self.b1 + self.b2 + self.b3 + self.ba +
            self.b4 + self.b5 + self.b6 + self.bb +
            self.b7 + self.b8 + self.b9 + self.bc +
            self.b10 + self.b0 + self.b12 + self.bd) * 0.5
        )

        self.set_freq1(
            (self.b1 + self.b2 + self.b3 + self.ba) * 697 +
            (self.b4 + self.b5 + self.b6 + self.bb) * 770 +
            (self.b7 + self.b8 + self.b9 + self.bc) * 852 +
            (self.bd + self.b10 + self.b0 + self.b12) * 941
        )

        self.set_freq2(
            (self.b1 + self.b4 + self.b7 + self.b10) * 1209 +
            (self.b2 + self.b5 + self.b8 + self.b0) * 1336 +
            (self.b3 + self.b6 + self.b9 + self.b12) * 1477 +
            (self.ba + self.bb + self.bc + self.bd) * 1633
        )

    def keyPressEvent(self, event):
        key = event.key()
        if self.active_key is not None:
            return  # Başka tuş basılıyken yeni tuş işleme

        self.active_key = key

        if key == Qt.Qt.Key_1:
            self.set_b1(1)
        elif key == Qt.Qt.Key_2:
            self.set_b2(1)
        elif key == Qt.Qt.Key_3:
            self.set_b3(1)
        elif key == Qt.Qt.Key_4:
            self.set_b4(1)
        elif key == Qt.Qt.Key_5:
            self.set_b5(1)
        elif key == Qt.Qt.Key_6:
            self.set_b6(1)
        elif key == Qt.Qt.Key_7:
            self.set_b7(1)
        elif key == Qt.Qt.Key_8:
            self.set_b8(1)
        elif key == Qt.Qt.Key_9:
            self.set_b9(1)
        elif key == Qt.Qt.Key_0:
            self.set_b0(1)
        elif key == Qt.Qt.Key_A:
            self.set_ba(1)
        elif key == Qt.Qt.Key_B:
            self.set_bb(1)
        elif key == Qt.Qt.Key_C:
            self.set_bc(1)
        elif key == Qt.Qt.Key_D:
            self.set_bd(1)
        elif key == Qt.Qt.Key_Asterisk:
            self.set_b10(1)
        elif key == Qt.Qt.Key_NumberSign:
            self.set_b12(1)

        event.accept()



    def keyReleaseEvent(self, event):
        key = event.key()

        if key != self.active_key:
            return  # Sadece aktif tuşu serbest bırakınca işleme al

        def release_action():
            if key == Qt.Qt.Key_1:
                self.set_b1(0)
            elif key == Qt.Qt.Key_2:
                self.set_b2(0)
            elif key == Qt.Qt.Key_3:
                self.set_b3(0)
            elif key == Qt.Qt.Key_4:
                self.set_b4(0)
            elif key == Qt.Qt.Key_5:
                self.set_b5(0)
            elif key == Qt.Qt.Key_6:
                self.set_b6(0)
            elif key == Qt.Qt.Key_7:
                self.set_b7(0)
            elif key == Qt.Qt.Key_8:
                self.set_b8(0)
            elif key == Qt.Qt.Key_9:
                self.set_b9(0)
            elif key == Qt.Qt.Key_0:
                self.set_b0(0)
            elif key == Qt.Qt.Key_A:
                self.set_ba(0)
            elif key == Qt.Qt.Key_B:
                self.set_bb(0)
            elif key == Qt.Qt.Key_C:
                self.set_bc(0)
            elif key == Qt.Qt.Key_D:
                self.set_bd(0)
            elif key == Qt.Qt.Key_Asterisk:
                self.set_b10(0)
            elif key == Qt.Qt.Key_NumberSign:
                self.set_b12(0)

            self.active_key = None  # Şimdi başka tuş basılabilir

        QTimer.singleShot(30, release_action)  # 30ms debounce toleransı
        event.accept()



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

        self.settings = Qt.QSettings("GNU Radio", "projetransmit2")

        try:
            geometry = self.settings.value("geometry")
            if geometry:
                self.restoreGeometry(geometry)
        except BaseException as exc:
            print(f"Qt GUI: Could not restore geometry: {str(exc)}", file=sys.stderr)

        ##################################################
        # Variables
        ##################################################
        self.bd = bd = 0
        self.bc = bc = 0
        self.bb = bb = 0
        self.ba = ba = 0
        self.b9 = b9 = 0
        self.b8 = b8 = 0
        self.b7 = b7 = 0
        self.b6 = b6 = 0
        self.b5 = b5 = 0
        self.b4 = b4 = 0
        self.b3 = b3 = 0
        self.b2 = b2 = 0
        self.b12 = b12 = 0
        self.b10 = b10 = 0
        self.b1 = b1 = 0
        self.b0 = b0 = 0
        self.samp_rate = samp_rate = 32000
        self.active_key = None
        self.freq2 = freq2 = (b1+b4+b7+b10)*1209+(b2+b5+b8+b0)*1336+(b3+b6+b9+b12)*1477+(ba+bb+bc+bd)*1633
        self.freq1 = freq1 = (b1+b2+b3+ba)*697+(b4+b5+b6+bb)*770+(b7+b8+b9+bc)*852+(bd+b10+b0+b12)*941
        self.amplitude = amplitude = (b1+b2+b3+ba+b4+b5+b6+bb+b7+b8+b9+bc+b10+b0+b12+bd)*0.5

        ##################################################
        # Blocks
        ##################################################

        self.qtgui_freq_sink_x_0 = qtgui.freq_sink_f(
            1024, #size
            window.WIN_BLACKMAN_hARRIS, #wintype
            0, #fc
            samp_rate, #bw
            "", #name
            1,
            None # parent
        )
        self.qtgui_freq_sink_x_0.set_update_time(0.10)
        self.qtgui_freq_sink_x_0.set_y_axis((-140), 10)
        self.qtgui_freq_sink_x_0.set_y_label('Relative Gain', 'dB')
        self.qtgui_freq_sink_x_0.set_trigger_mode(qtgui.TRIG_MODE_FREE, 0.0, 0, "")
        self.qtgui_freq_sink_x_0.enable_autoscale(False)
        self.qtgui_freq_sink_x_0.enable_grid(False)
        self.qtgui_freq_sink_x_0.set_fft_average(1.0)
        self.qtgui_freq_sink_x_0.enable_axis_labels(True)
        self.qtgui_freq_sink_x_0.enable_control_panel(False)
        self.qtgui_freq_sink_x_0.set_fft_window_normalized(False)


        self.qtgui_freq_sink_x_0.set_plot_pos_half(not True)

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
        self.top_layout.addWidget(self._qtgui_freq_sink_x_0_win)
        self.blocks_throttle_0 = blocks.throttle(gr.sizeof_float*1, samp_rate,True)
        self.blocks_add_xx_0 = blocks.add_vff(1)
        _bd_push_button = Qt.QPushButton('D')
        _bd_push_button = Qt.QPushButton('D')
        self._bd_choices = {'Pressed': 1, 'Released': 0}
        _bd_push_button.pressed.connect(lambda: self.set_bd(self._bd_choices['Pressed']))
        _bd_push_button.released.connect(lambda: self.set_bd(self._bd_choices['Released']))
        self.top_grid_layout.addWidget(_bd_push_button, 4, 4, 1, 1)
        for r in range(4, 5):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(4, 5):
            self.top_grid_layout.setColumnStretch(c, 1)
        _bc_push_button = Qt.QPushButton('C')
        _bc_push_button = Qt.QPushButton('C')
        self._bc_choices = {'Pressed': 1, 'Released': 0}
        _bc_push_button.pressed.connect(lambda: self.set_bc(self._bc_choices['Pressed']))
        _bc_push_button.released.connect(lambda: self.set_bc(self._bc_choices['Released']))
        self.top_grid_layout.addWidget(_bc_push_button, 3, 4, 1, 1)
        for r in range(3, 4):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(4, 5):
            self.top_grid_layout.setColumnStretch(c, 1)
        _bb_push_button = Qt.QPushButton('B')
        _bb_push_button = Qt.QPushButton('B')
        self._bb_choices = {'Pressed': 1, 'Released': 0}
        _bb_push_button.pressed.connect(lambda: self.set_bb(self._bb_choices['Pressed']))
        _bb_push_button.released.connect(lambda: self.set_bb(self._bb_choices['Released']))
        self.top_grid_layout.addWidget(_bb_push_button, 2, 4, 1, 1)
        for r in range(2, 3):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(4, 5):
            self.top_grid_layout.setColumnStretch(c, 1)
        _ba_push_button = Qt.QPushButton('A')
        _ba_push_button = Qt.QPushButton('A')
        self._ba_choices = {'Pressed': 1, 'Released': 0}
        _ba_push_button.pressed.connect(lambda: self.set_ba(self._ba_choices['Pressed']))
        _ba_push_button.released.connect(lambda: self.set_ba(self._ba_choices['Released']))
        self.top_grid_layout.addWidget(_ba_push_button, 1, 4, 1, 1)
        for r in range(1, 2):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(4, 5):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b9_push_button = Qt.QPushButton('9')
        _b9_push_button = Qt.QPushButton('9')
        self._b9_choices = {'Pressed': 1, 'Released': 0}
        _b9_push_button.pressed.connect(lambda: self.set_b9(self._b9_choices['Pressed']))
        _b9_push_button.released.connect(lambda: self.set_b9(self._b9_choices['Released']))
        self.top_grid_layout.addWidget(_b9_push_button, 3, 3, 1, 1)
        for r in range(3, 4):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(3, 4):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b8_push_button = Qt.QPushButton('8')
        _b8_push_button = Qt.QPushButton('8')
        self._b8_choices = {'Pressed': 1, 'Released': 0}
        _b8_push_button.pressed.connect(lambda: self.set_b8(self._b8_choices['Pressed']))
        _b8_push_button.released.connect(lambda: self.set_b8(self._b8_choices['Released']))
        self.top_grid_layout.addWidget(_b8_push_button, 3, 2, 1, 1)
        for r in range(3, 4):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(2, 3):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b7_push_button = Qt.QPushButton('7')
        _b7_push_button = Qt.QPushButton('7')
        self._b7_choices = {'Pressed': 1, 'Released': 0}
        _b7_push_button.pressed.connect(lambda: self.set_b7(self._b7_choices['Pressed']))
        _b7_push_button.released.connect(lambda: self.set_b7(self._b7_choices['Released']))
        self.top_grid_layout.addWidget(_b7_push_button, 3, 1, 1, 1)
        for r in range(3, 4):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(1, 2):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b6_push_button = Qt.QPushButton('6')
        _b6_push_button = Qt.QPushButton('6')
        self._b6_choices = {'Pressed': 1, 'Released': 0}
        _b6_push_button.pressed.connect(lambda: self.set_b6(self._b6_choices['Pressed']))
        _b6_push_button.released.connect(lambda: self.set_b6(self._b6_choices['Released']))
        self.top_grid_layout.addWidget(_b6_push_button, 2, 3, 1, 1)
        for r in range(2, 3):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(3, 4):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b5_push_button = Qt.QPushButton('5')
        _b5_push_button = Qt.QPushButton('5')
        self._b5_choices = {'Pressed': 1, 'Released': 0}
        _b5_push_button.pressed.connect(lambda: self.set_b5(self._b5_choices['Pressed']))
        _b5_push_button.released.connect(lambda: self.set_b5(self._b5_choices['Released']))
        self.top_grid_layout.addWidget(_b5_push_button, 2, 2, 1, 1)
        for r in range(2, 3):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(2, 3):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b4_push_button = Qt.QPushButton('4')
        _b4_push_button = Qt.QPushButton('4')
        self._b4_choices = {'Pressed': 1, 'Released': 0}
        _b4_push_button.pressed.connect(lambda: self.set_b4(self._b4_choices['Pressed']))
        _b4_push_button.released.connect(lambda: self.set_b4(self._b4_choices['Released']))
        self.top_grid_layout.addWidget(_b4_push_button, 2, 1, 1, 1)
        for r in range(2, 3):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(1, 2):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b3_push_button = Qt.QPushButton('3')
        _b3_push_button = Qt.QPushButton('3')
        self._b3_choices = {'Pressed': 1, 'Released': 0}
        _b3_push_button.pressed.connect(lambda: self.set_b3(self._b3_choices['Pressed']))
        _b3_push_button.released.connect(lambda: self.set_b3(self._b3_choices['Released']))
        self.top_grid_layout.addWidget(_b3_push_button, 1, 3, 1, 1)
        for r in range(1, 2):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(3, 4):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b2_push_button = Qt.QPushButton('2')
        _b2_push_button = Qt.QPushButton('2')
        self._b2_choices = {'Pressed': 1, 'Released': 0}
        _b2_push_button.pressed.connect(lambda: self.set_b2(self._b2_choices['Pressed']))
        _b2_push_button.released.connect(lambda: self.set_b2(self._b2_choices['Released']))
        self.top_grid_layout.addWidget(_b2_push_button, 1, 2, 1, 1)
        for r in range(1, 2):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(2, 3):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b12_push_button = Qt.QPushButton('#')
        _b12_push_button = Qt.QPushButton('#')
        self._b12_choices = {'Pressed': 1, 'Released': 0}
        _b12_push_button.pressed.connect(lambda: self.set_b12(self._b12_choices['Pressed']))
        _b12_push_button.released.connect(lambda: self.set_b12(self._b12_choices['Released']))
        self.top_grid_layout.addWidget(_b12_push_button, 4, 3, 1, 1)
        for r in range(4, 5):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(3, 4):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b10_push_button = Qt.QPushButton('*')
        _b10_push_button = Qt.QPushButton('*')
        self._b10_choices = {'Pressed': 1, 'Released': 0}
        _b10_push_button.pressed.connect(lambda: self.set_b10(self._b10_choices['Pressed']))
        _b10_push_button.released.connect(lambda: self.set_b10(self._b10_choices['Released']))
        self.top_grid_layout.addWidget(_b10_push_button, 4, 1, 1, 1)
        for r in range(4, 5):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(1, 2):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b1_push_button = Qt.QPushButton('1')
        _b1_push_button = Qt.QPushButton('1')
        self._b1_choices = {'Pressed': 1, 'Released': 0}
        _b1_push_button.pressed.connect(lambda: self.set_b1(self._b1_choices['Pressed']))
        _b1_push_button.released.connect(lambda: self.set_b1(self._b1_choices['Released']))
        self.top_grid_layout.addWidget(_b1_push_button, 1, 1, 1, 1)
        for r in range(1, 2):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(1, 2):
            self.top_grid_layout.setColumnStretch(c, 1)
        _b0_push_button = Qt.QPushButton('0')
        _b0_push_button = Qt.QPushButton('0')
        self._b0_choices = {'Pressed': 1, 'Released': 0}
        _b0_push_button.pressed.connect(lambda: self.set_b0(self._b0_choices['Pressed']))
        _b0_push_button.released.connect(lambda: self.set_b0(self._b0_choices['Released']))
        self.top_grid_layout.addWidget(_b0_push_button, 4, 2, 1, 1)
        for r in range(4, 5):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(2, 3):
            self.top_grid_layout.setColumnStretch(c, 1)
        self.audio_sink_0 = audio.sink(samp_rate, '', True)
        self.analog_sig_source_x_0_0 = analog.sig_source_f(samp_rate, analog.GR_COS_WAVE, freq2, amplitude, 0, 0)
        self.analog_sig_source_x_0 = analog.sig_source_f(samp_rate, analog.GR_COS_WAVE, freq1, amplitude, 0, 0)


        ##################################################
        # Connections
        ##################################################
        self.connect((self.analog_sig_source_x_0, 0), (self.blocks_add_xx_0, 0))
        self.connect((self.analog_sig_source_x_0_0, 0), (self.blocks_add_xx_0, 1))
        self.connect((self.blocks_add_xx_0, 0), (self.blocks_throttle_0, 0))
        self.connect((self.blocks_throttle_0, 0), (self.audio_sink_0, 0))
        self.connect((self.blocks_throttle_0, 0), (self.qtgui_freq_sink_x_0, 0))


    def closeEvent(self, event):
        self.settings = Qt.QSettings("GNU Radio", "projetransmit2")
        self.settings.setValue("geometry", self.saveGeometry())
        self.stop()
        self.wait()

        event.accept()

    def get_bd(self):
        return self.bd

    def set_bd(self, bd):
        self.bd = bd
        self.update_freq_amp()


    def get_bc(self):
        return self.bc

    def set_bc(self, bc):
        self.bc = bc
        self.update_freq_amp()

    def get_bb(self):
        return self.bb

    def set_bb(self, bb):
        self.bb = bb
        self.update_freq_amp()

    def get_ba(self):
        return self.ba

    def set_ba(self, ba):
        self.ba = ba
        self.update_freq_amp()

    def get_b9(self):
        return self.b9

    def set_b9(self, b9):
        self.b9 = b9
        self.update_freq_amp()

    def get_b8(self):
        return self.b8

    def set_b8(self, b8):
        self.b8 = b8
        self.update_freq_amp()

    def get_b7(self):
        return self.b7

    def set_b7(self, b7):
        self.b7 = b7
        self.update_freq_amp()

    def get_b6(self):
        return self.b6

    def set_b6(self, b6):
        self.b6 = b6
        self.update_freq_amp()

    def get_b5(self):
        return self.b5

    def set_b5(self, b5):
        self.b5 = b5
        self.update_freq_amp()

    def get_b4(self):
        return self.b4

    def set_b4(self, b4):
        self.b4 = b4
        self.update_freq_amp()

    def get_b3(self):
        return self.b3

    def set_b3(self, b3):
        self.b3 = b3
        self.update_freq_amp()

    def get_b2(self):
        return self.b2

    def set_b2(self, b2):
        self.b2 = b2
        self.update_freq_amp()

    def get_b12(self):
        return self.b12

    def set_b12(self, b12):
        self.b12 = b12
        self.update_freq_amp()

    def get_b10(self):
        return self.b10

    def set_b10(self, b10):
        self.b10 = b10
        self.update_freq_amp()

    def get_b1(self):
        return self.b1

    def set_b1(self, b1):
        self.b1 = b1
        self.update_freq_amp()

    def get_b0(self):
        return self.b0

    def set_b0(self, b0):
        self.b0 = b0
        self.update_freq_amp()

    def get_samp_rate(self):
        return self.samp_rate

    def set_samp_rate(self, samp_rate):
        self.samp_rate = samp_rate
        self.analog_sig_source_x_0.set_sampling_freq(self.samp_rate)
        self.analog_sig_source_x_0_0.set_sampling_freq(self.samp_rate)
        self.blocks_throttle_0.set_sample_rate(self.samp_rate)
        self.qtgui_freq_sink_x_0.set_frequency_range(0, self.samp_rate)

    def get_freq2(self):
        return self.freq2

    def set_freq2(self, freq2):
        self.freq2 = freq2
        self.analog_sig_source_x_0_0.set_frequency(self.freq2)

    def get_freq1(self):
        return self.freq1

    def set_freq1(self, freq1):
        self.freq1 = freq1
        self.analog_sig_source_x_0.set_frequency(self.freq1)

    def get_amplitude(self):
        return self.amplitude

    def set_amplitude(self, amplitude):
        self.amplitude = amplitude
        self.analog_sig_source_x_0.set_amplitude(self.amplitude)
        self.analog_sig_source_x_0_0.set_amplitude(self.amplitude)




def main(top_block_cls=projetransmit2, options=None):

    qapp = Qt.QApplication(sys.argv)

    tb = top_block_cls()

    tb.start()

    tb.show()

    tb.setFocus()

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
