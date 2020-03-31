//
//  ViewController.swift
//  QuizApp
//
//  Created by Akhil George on 30/3/20.
//  Copyright © 2020 Akhil George. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var score:Int = 0;
    var qs = quizQuestions(questions: "vqweaeb",answers: ["aaa","vvv","bbb","ccc","ddd"],correctAnswer: "aaa")
    
    @IBOutlet weak var nextQnText: UIButton!
   
    @IBOutlet weak var ansText: UIButton!
    
    @IBOutlet weak var ans1Label: UIButton!
    @IBOutlet weak var ans2Label: UIButton!
    @IBOutlet weak var ans3Label: UIButton!
    @IBOutlet weak var ans4Label: UIButton!
    
    
    
    @IBOutlet weak var actualAns: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
   
   
    
    @IBAction func nxtQn(_ sender: Any) {
        if(nextQnText.titleLabel?.text=="QUIT")
        {
            exit(0)
        }
        if(iteration>=5)
        {
            viewExit()
        }
        else
        {
            qs=displayQn()
            questionLabel.text=qs.questions
            ans1Label.setTitle(qs.answers[0], for: .normal)
            ans2Label.setTitle(qs.answers[1], for: .normal)
            ans3Label.setTitle(qs.answers[2], for: .normal)
            ans4Label.setTitle(qs.answers[3], for: .normal)
        }
    }
    
    @IBAction func actAnsButton(_ sender: Any) {
        if(ansText.titleLabel?.text=="RESTART")
        {
            iteration=0;
            viewDidLoad()
        }
        else
        {
            scoreLabel.text="Ans:" + qs.correctAnswer
        }
    }
    
    @IBAction func answer1(_ sender: Any) {
        if(ans1Label.titleLabel?.text == qs.correctAnswer)
        {
            score+=1
            scoreLabel.text="score " + String(score) + "/5"
        }
        if(iteration<5)
        {
            qs=displayQn()
            questionLabel.text=qs.questions
            ans1Label.setTitle(qs.answers[0], for: .normal)
            ans2Label.setTitle(qs.answers[1], for: .normal)
            ans3Label.setTitle(qs.answers[2], for: .normal)
            ans4Label.setTitle(qs.answers[3], for: .normal)
        }
        else{
            viewExit()
        }
    }
    @IBAction func answer2(_ sender: Any) {
        if(ans2Label.titleLabel?.text == qs.correctAnswer)
        {
            score+=1
            scoreLabel.text="score " + String(score) + "/5"
        }
         if(iteration<5)
        {
            qs=displayQn()
            questionLabel.text=qs.questions
            ans1Label.setTitle(qs.answers[0], for: .normal)
            ans2Label.setTitle(qs.answers[1], for: .normal)
            ans3Label.setTitle(qs.answers[2], for: .normal)
            ans4Label.setTitle(qs.answers[3], for: .normal)
        }
        else{
            viewExit()
        }
    }
    @IBAction func answer3(_ sender: Any) {
        if(ans3Label.titleLabel?.text == qs.correctAnswer)
        {
            score+=1
            scoreLabel.text="score " + String(score) + "/5"
        }
        if(iteration<5)
        {
            qs=displayQn()
            questionLabel.text=qs.questions
            ans1Label.setTitle(qs.answers[0], for: .normal)
            ans2Label.setTitle(qs.answers[1], for: .normal)
            ans3Label.setTitle(qs.answers[2], for: .normal)
            ans4Label.setTitle(qs.answers[3], for: .normal)
        }
        else{
            viewExit()
        }
    }
    
    @IBAction func answer4(_ sender: Any) {
        if(ans4Label.titleLabel?.text == qs.correctAnswer)
        {
            score+=1
            scoreLabel.text="score " + String(score) + "/5"
        }
        if(iteration<5)
        {
            qs=displayQn()
            questionLabel.text=qs.questions
            ans1Label.setTitle(qs.answers[0], for: .normal)
            ans2Label.setTitle(qs.answers[1], for: .normal)
            ans3Label.setTitle(qs.answers[2], for: .normal)
            ans4Label.setTitle(qs.answers[3], for: .normal)
        }
        else{
            viewExit()
        }
    }
    override func viewDidLoad() {
        score=0
        self.scoreLabel.isHidden=false
        self.ans1Label.isHidden=false
        self.ans2Label.isHidden=false
        self.ans3Label.isHidden=false
        self.ans4Label.isHidden=false
        nextQnText.setTitle("Next Qn", for: .normal)
        ansText.setTitle("Answer", for: .normal)
        scoreLabel.text="score 0/5"
        qs=displayQn()
        questionLabel.text=qs.questions
        ans1Label.setTitle(qs.answers[0], for: .normal)
        ans2Label.setTitle(qs.answers[1], for: .normal)
        ans3Label.setTitle(qs.answers[2], for: .normal)
        ans4Label.setTitle(qs.answers[3], for: .normal)
        super.viewDidLoad()
    }
    func viewExit() {
        
       
        questionLabel.text="score " + String(score) + "/5"
        self.scoreLabel.isHidden=true
        self.ans1Label.isHidden=true
        self.ans2Label.isHidden=true
        self.ans3Label.isHidden=true
        self.ans4Label.isHidden=true
        nextQnText.setTitle("QUIT", for: .normal)
        ansText.setTitle("RESTART", for: .normal)
    }
}
class quizQuestions{
    var questions:String
    var answers:[String]
    var correctAnswer:String
    init(questions:String,answers:[String],correctAnswer:String) {
        self.questions=questions;
        self.answers=answers;
        self.correctAnswer=correctAnswer;
    }
    func createQuestion(questions:String,answers:[String],correctAnswer:String)
    {
        self.questions=questions;
        self.answers=answers;
        self.correctAnswer=correctAnswer;
    }
}
var qs1 = quizQuestions(questions: "Number of states in America",answers: ["56","44","51","50"],correctAnswer: "51")

var qs2 = quizQuestions(questions: "National sports of Australia",answers: ["Footy","Football","Baseball","Cricket"],correctAnswer: "Cricket")

var qs3 = quizQuestions(questions: "Capital of Australia",answers: ["Melbourne","Canberra","Sydney","Brisbane"],correctAnswer: "Canberra")

var qs4 = quizQuestions(questions: "Biggest city in Australia",answers: ["Melbounr","Sydney","NewYork","Paris"],correctAnswer: "Sydney")

var qs5 = quizQuestions(questions: "Biggest Continent",answers: ["Asia","Europe","Australia","Africa"], correctAnswer: "Asia")

var questionArray:[quizQuestions] = [qs1,qs2,qs3,qs4,qs5]
var iteration:Int = 0

func displayQn() -> quizQuestions
{
    if(iteration <= 4)
    {
        iteration += 1
        return questionArray[iteration-1]
        
    }
    return questionArray[4]
}
