/**
 * 
 */
package findmydoctor.restapi.client;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


public class JsonParser {
	public List<Doctors> convertToObject(String jsondata) {
		System.out.println("jsonData :"+jsondata);
		
		List<Doctors> lDoc = new ArrayList<Doctors>();
		try {
			JSONObject obj = new JSONObject(jsondata);
			System.out.println("object :"+obj);
			JSONArray  arr = obj.getJSONArray("data");
			for (int i=0;i<arr.length();i++) {
				Doctors doc = new Doctors();
				Profile profile = new Profile();
				
				profile.setBio(arr.getJSONObject(i).getJSONObject("profile").getString("bio"));
				profile.setFirst_name(arr.getJSONObject(i).getJSONObject("profile").getString("first_name"));
			
				
				try {
					profile.setGender(arr.getJSONObject(i).getJSONObject("profile").getString("gender"));
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					profile.setGender(null);
				}
				
				profile.setImage(arr.getJSONObject(i).getJSONObject("profile").getString("image_url"));
				doc.setProfile(profile);
				//practices
				JSONArray  arrayPractices = arr.getJSONObject(i).getJSONArray("practices");
				JSONArray  arrayspecialities = arr.getJSONObject(i).getJSONArray("specialties");
				List<Practices> practice = new ArrayList<>();
				
				for (int j=0;j<1;j++) {
					Practices practices = new Practices();
					practices.setAcceptsNewPatients(arrayPractices.getJSONObject(j).getString("accepts_new_patients"));
					practices.setLocation_slug(arrayPractices.getJSONObject(j).getString("location_slug"));
					practice.add(practices);
				}
				List<Specialties> speciality = new ArrayList<>();
				for (int j=0;j<1;j++) {
					Specialties specialities = new Specialties();
					specialities.setUid(arrayspecialities.getJSONObject(j).getString("uid"));
					
					speciality.add(specialities);
				}
				
				doc.setPractices(practice);
				doc.setlSpecialties(speciality);
				
				lDoc.add(doc);
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lDoc;
	}

}
