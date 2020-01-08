package test;

import java.util.HashMap;

public class Solution {
	public String solution(String[] participant, String[] completion) {
		HashMap<String, Integer> participantMap = convertMap(participant);
		HashMap<String, Integer> completionMap = convertMap(completion);

		for (String key : completionMap.keySet()) {
			participantMap.put(key, participantMap.get(key) - completionMap.get(key));
		}

		for (String key : participantMap.keySet()) {
			if (participantMap.get(key) != 0) {
				return key;
			}
		}
		return null;
	}

	public HashMap<String, Integer> convertMap(String[] arr) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		for (int i = 0; i < arr.length; i++) {
			map.put(arr[i], map.get(arr[i]) == null ? 1 : map.get(arr[i]) + 1);
		}

		return map;
	}
}
