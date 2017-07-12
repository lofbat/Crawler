package org.course.test;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.tokenattributes.CharTermAttribute;
import org.wltea.analyzer.lucene.IKAnalyzer;

/**
 * 演示分词
 */
public class AnalyzerTest {
	public static void main(String[] args) throws Exception {
		String content = "计算机操作系统中实时系统与分时系统有什么区别";
		// true:智能切分，false:细粒度切分
		Analyzer analyzer = new IKAnalyzer(true);
		// 对content进行分词，得到的结果是分词流
		TokenStream ts = analyzer.tokenStream("text", content);
		ts.reset();

		CharTermAttribute attr = null;
		// 遍历分词流
		while (ts.incrementToken()) {
			attr = ts.getAttribute(CharTermAttribute.class);
			System.out.print(attr.toString() + " ");
		}
	}
}