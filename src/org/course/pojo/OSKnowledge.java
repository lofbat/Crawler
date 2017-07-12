package org.course.pojo;

/**
 * 
 * @author lofbat
 *
 * 操作系统知识model
 */
public class OSKnowledge {
	private int questionid;
	private String question;
	private String answer;
	private int typeid;
	private int knowid;
	
	public int getQuestionid() {
		return questionid;
	}
	
	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
	
	public String getQuestion() {
		return question;
	}
	
	public void setQuestion(String question) {
		this.question = question;
	}
	
	public String getAnswer() {
		return answer;
	}
	
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	public int getTypeid() {
		return typeid;
	}
	
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	
	public int getKnowid() {
		return knowid;
	}
	
	public void setKnowid(int knowid) {
		this.knowid = knowid;
	}
}
