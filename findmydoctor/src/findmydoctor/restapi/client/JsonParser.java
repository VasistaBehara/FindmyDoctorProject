/**
 * 
 */
package findmydoctor.restapi.client;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


public class JsonParser {
	public Doctor convertToObject(String jsondata) {
		System.out.println("jsonData :"+jsondata);
		
		Doctor doc = new Doctor();
		try {
			JSONObject obj = new JSONObject(jsondata);
			System.out.println("object :"+obj);
			JSONArray  arr = obj.getJSONArray("data");
			for (int i=0;i<arr.length();i++) {
				Profile profile = new Profile();
				profile.setBio(arr.getJSONObject(i).getJSONObject("profile").getString("bio"));
				profile.setFirst_name(arr.getJSONObject(i).getJSONObject("profile").getString("first_name"));
				doc.setProfile(profile);
				//practices
				JSONArray  arrayPractices = arr.getJSONObject(i).getJSONArray("practices");
				for (int j=0;j<arrayPractices.length();j++) {
					Practices practices = new Practices();
					practices.setAcceptsNewPatients(arrayPractices.getJSONObject(j).getString("accepts_new_patients"));
				}
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return doc;
	}

}
