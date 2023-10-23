from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import(QButtonGroup, QGroupBox, QLabel, QApplication, QWidget,  QPushButton, QVBoxLayout, QRadioButton, QHBoxLayout, QMessageBox, QSpinBox, QLineEdit)

app = QApplication([])
main_win = QWidget()

card_width, card_height = 500, 500
main_win.resize(card_width, card_height)

main_layout = QVBoxLayout()

layout_1 = QHBoxLayout()
layout_2 = QHBoxLayout()
layout_3 = QHBoxLayout()
layout_4 = QHBoxLayout()
layuot_5 = QHBoxLayout()
layuot_6 = QHBoxLayout()
layuot_7 = QHBoxLayout()
layuot_8 = QHBoxLayout()

text_question = QLabel('Введіть запитання')
text_ans = QLabel("Введіть вірну відповідь")
text_wrong_1 = QLabel('Введіть першу хибну відповідь')
text_wrong_2 = QLabel('Введіть другу хибну відповідь')
text_wrong_3 = QLabel('Введіть третю хибну відповідь')

text_1 = QLineEdit()
text_2 = QLineEdit()
text_3 = QLineEdit()
text_4 = QLineEdit()
text_5 = QLineEdit()

btn1 = QPushButton()
btn2 = QPushButton()
btn3 = QPushButton()

line = QLabel("Статистика")

text_result = QVBoxLayout()
text_result.addWidget(text_question)
text_result.addWidget(text_ans)
text_result.addWidget(text_wrong_1)
text_result.addWidget(text_wrong_2)
text_result.addWidget(text_wrong_3)

text_no = QVBoxLayout()
text_no.addWidget(text_1)
text_no.addWidget(text_1)
text_no.addWidget(text_2)
text_no.addWidget(text_4)
text_no.addWidget(text_5)


HLine = QHBoxLayout()
HLine.addLayout(text_result)
HLine.addLayout(text_no)

btn_back = QPushButton('Назад')
btn_add_question = QPushButton("Додати запитання")
btn_clear = QPushButton("Очистити")
hl_button = QHBoxLayout()
hl_buttons = QHBoxLayout()
hl_button.addWidget(btn_add_question)
hl_button.addWidget(btn_clear)

vl_res = QVBoxLayout()
vl_res.addLayout(HLine)
vl_res.addWidget(hl_button)
vl_res.addWidget(line)
vl_res.addWidget(text_no)
vl_res.addWidget(btn_back)

main_win.setLayout(vl_res)

