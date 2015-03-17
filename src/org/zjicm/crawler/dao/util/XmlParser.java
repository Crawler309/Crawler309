package org.zjicm.crawler.dao.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.zjicm.crawler.dao.pojo.Config;

public class XmlParser {

	public Config getIndexPath() {
		String dirpath = this.getClass().getClassLoader().getResource(
				"Config.xml").getPath().replace("%20", " ");

		Config c = new Config();
		SAXReader read = new SAXReader();
		Document document = null;
		try {
			document = read.read(new File(dirpath));
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		try {
			read.read(new FileInputStream(dirpath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		}

		Element root = document.getRootElement();
		List<Element> elements = root.elements();

		Config cc = new Config();

		cc.setIndexPath(root.elementText("IndexPath"));

		return cc;
	}
}
