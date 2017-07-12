package org.course.test;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.tokenattributes.CharTermAttribute;
import org.wltea.analyzer.lucene.IKAnalyzer;

/**
 * ��ʾ�ִ�
 */
public class AnalyzerTest {
	public static void main(String[] args) throws Exception {
		String content = "���������ϵͳ��ʵʱϵͳ���ʱϵͳ��ʲô����";
		// true:�����з֣�false:ϸ�����з�
		Analyzer analyzer = new IKAnalyzer(true);
		// ��content���зִʣ��õ��Ľ���Ƿִ���
		TokenStream ts = analyzer.tokenStream("text", content);
		ts.reset();

		CharTermAttribute attr = null;
		// �����ִ���
		while (ts.incrementToken()) {
			attr = ts.getAttribute(CharTermAttribute.class);
			System.out.print(attr.toString() + " ");
		}
	}
}