package org.zjicm.crawler.service.impl;

import java.util.List;

import org.zjicm.crawler.dao.IWebContInfoDao;
import org.zjicm.crawler.dao.impl.WebContInfoDao;
import org.zjicm.crawler.service.IWebContInfoService;
import org.zjicm.crawler.vo.Webcontinfo;

public class WebContInfoService implements IWebContInfoService {
	protected IWebContInfoDao webContInfoDao;

	public IWebContInfoDao getWebContInfoDao() {
		return webContInfoDao;
	}

	public void setWebContInfoDao(IWebContInfoDao webContInfoDao) {
		this.webContInfoDao = webContInfoDao;
	}

	public List getWebContInfo() {

		return webContInfoDao.getWebContInfo();
	}

	public int getTotal() {
		return webContInfoDao.getTotal();
	}

	public List getWebContInfoPaging(int currentPage, int pageSize) {
		List<Webcontinfo> list = webContInfoDao.getWebContInfoPading(
				currentPage, pageSize);
		for (int i = 0; i < list.size(); i++) {
			String Text = list.get(i).getText();
			if (Text.length() >= 100) {

				list.get(i).setText(Text.substring(0, 98));
			}

		}
		return list;
	}
}
