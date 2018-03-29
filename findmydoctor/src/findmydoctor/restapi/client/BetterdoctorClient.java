/**
 * 
 */
package findmydoctor.restapi.client;
import java.io.IOException;

import org.apache.commons.httpclient.*;
import org.apache.commons.httpclient.methods.*;
import org.apache.commons.httpclient.params.HttpMethodParams;

import findmydoctor.beans.Doctor;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

public class BetterdoctorClient {
	
	
	@SuppressWarnings("unchecked")
	public  List<Doctors> GetdoctorClient() {
		
		List<Doctors> doc=null;
	
	try {
		String url="https://api.betterdoctor.com/2016-03-01/doctors?"
				+ "location=37.773,-122.413,100&skip=2&limit=30&user_key=faa065b29aaa3868e69e5c7d01248908";
		URL url1 = new URL(url);
		HttpURLConnection conn = (HttpURLConnection) url1.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Accept", "application/json");

		if (conn.getResponseCode() != 200) {
			throw new RuntimeException("Failed : HTTP error code : "
					+ conn.getResponseCode());
		}

		BufferedReader br = new BufferedReader(new InputStreamReader(
			(conn.getInputStream())));

		String output;
		String data = null;
		System.out.println("Output from Server .... \n");
		while ((output = br.readLine()) != null) {
			//System.out.println(output);
			data = output;
		}

		conn.disconnect();
		JsonParser jsonParser = new JsonParser();
		doc = jsonParser.convertToObject(data);
		System.out.println( doc);
		

	  } catch (MalformedURLException e1) {

		e1.printStackTrace();

	  } catch (IOException e) {

		e.printStackTrace();

	  }
return doc;
}
}
