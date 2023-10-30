from random import choice, shuffle 
from time import sleep 
from PyQt5.QtWidgets import QApplication 
 
 
app = QApplication([]) 
from main_widnow import* 
from menu_window import*

class Question:
    def __init__(self, question, answer, wrong_answer1, wrong_answer2, wrong_answer3):
        self.question = question
        self.answer = answer 
        self.wrong_answer1 = wrong_answer1
        self.wrong_answer2 = wrong_answer2
        self.wrong_answer3 = wrong_answer3
        self.isAsking = True
        self.count_ask = 0
        self.count_right = 0
        self.count_ask = 0
        self.count_right = 0
    def got_right(self):
        self.count_ask += 1
        self.count_right += 1
    def got_wrong(self):
        self.count_ask += 1

q1 = Question('Яблуко', 'apple' 'Ананас' "Пайнепл", "UHeif")
q2 = Question("Дім", "Home", "Хоме", "Хоум", "Apple")
q3 = Question('Миша', "Mouse", "Мауcс панцеркапфаген 4", "Пайнепл", "Апплє")
q4 = Question('Число', "number", "digit", "Намбер", "Summer")

radio_buttons = [rb_ans1, rb_ans2, rb_ans3, rb_ans4]
question = [q1, q2, q3, q4]

def new_question():
    global cur_q
    cur_q = choice(question)
    lb_question.setText(cur_q.question)
    lb_right_answer.setText(cur_q.question)
    shuffle(radio_buttons)

    radio_buttons[0].setText(cur_q.wrong_answer1)
    radio_buttons[1].setText(cur_q.wrong_answer2)
    radio_buttons[2].setText(cur_q.wrong_answer3)
    radio_buttons[3].setText(cur_q.answer)

new_question()




