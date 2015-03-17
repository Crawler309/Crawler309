package org.zjicm.lucene.lucene_ik;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.Term;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TermQuery;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.FSDirectory;
import org.zjicm.lucene.lucene_ik.pojo.Result;

public class SearchKeywords {

	public List<Result> search(String indexDir, String key) throws IOException {

		IndexReader reader = DirectoryReader.open(FSDirectory.open(new File(
				indexDir)));
		IndexSearcher is = new IndexSearcher(reader);

		Term t = new Term("content", key);
		Query query = new TermQuery(t);

		TopDocs results = is.search(query, 1000000);
		// ScoreDoc[] hits = results.scoreDocs;

		int numTotalHits = results.totalHits;
		String[][] str = new String[numTotalHits][5];

		List<Result> list = new ArrayList<Result>();

		for (ScoreDoc scoreDoc : results.scoreDocs) {
			Document doc = is.doc(scoreDoc.doc);
			Result searchResult = new Result();

			searchResult.setTitle(doc.get("title"));
			searchResult.setContent(doc.get("content"));
			searchResult.setTime(doc.get("time"));
			searchResult.setUrl(doc.get("url"));
			searchResult.setWriter(doc.get("writer"));
			list.add(searchResult);
		}

		reader.close();
		return list;
	}
}
