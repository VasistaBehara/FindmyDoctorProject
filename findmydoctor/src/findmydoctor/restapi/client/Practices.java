/**
 * 
 */
package findmydoctor.restapi.client;
import java.util.List;

public class Practices {


	private String location_slug;
	private String withinDistanceArea;
	private String distance;
	private String lat;
	private String lon;
	private String uid;
	private String name;
	private String website;
	private String acceptsNewPatients;
	private VisitAddress vaAddress;
	private List<Phones> phones;
	public String getLocation_slug() {
		return location_slug;
	}
	public void setLocation_slug(String location_slug) {
		this.location_slug = location_slug;
	}
	public String getWithinDistanceArea() {
		return withinDistanceArea;
	}
	public void setWithinDistanceArea(String withinDistanceArea) {
		this.withinDistanceArea = withinDistanceArea;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLon() {
		return lon;
	}
	public void setLon(String lon) {
		this.lon = lon;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getAcceptsNewPatients() {
		return acceptsNewPatients;
	}
	public void setAcceptsNewPatients(String acceptsNewPatients) {
		this.acceptsNewPatients = acceptsNewPatients;
	}
	public VisitAddress getVaAddress() {
		return vaAddress;
	}
	public void setVaAddress(VisitAddress vaAddress) {
		this.vaAddress = vaAddress;
	}
	public List<Phones> getPhones() {
		return phones;
	}
	public void setPhones(List<Phones> phones) {
		this.phones = phones;
	}
	
}
