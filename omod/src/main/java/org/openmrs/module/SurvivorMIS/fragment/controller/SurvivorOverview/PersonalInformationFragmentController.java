/**
 * The contents of this file are subject to the OpenMRS Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://license.openmrs.org
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 * License for the specific language governing rights and limitations
 * under the License.
 *
 * Copyright (C) OpenMRS, LLC.  All Rights Reserved.
 */
package org.openmrs.module.SurvivorMIS.fragment.controller.SurvivorOverview;

import org.openmrs.Encounter;
import org.openmrs.EncounterType;
import org.openmrs.module.emrapi.patient.PatientDomainWrapper;
import org.openmrs.api.EncounterService;
import org.openmrs.ui.framework.annotation.FragmentParam;
import org.openmrs.ui.framework.annotation.SpringBean;
import org.openmrs.ui.framework.fragment.FragmentModel;

import java.util.ArrayList;
import java.util.List;

public class PersonalInformationFragmentController {
	
	public void controller(FragmentModel model, @FragmentParam("patientId") PatientDomainWrapper patient,
	                       @SpringBean("encounterService") EncounterService encounterService) {
		//Define the encounterTypes array
		List<EncounterType> encounterTypes = new ArrayList<EncounterType>();
		
		//Staff Observations
			EncounterType encounterType = encounterService.getEncounterTypeByUuid("151655f0-7c57-40c3-af1a-dbc5cf992440");
			//We do this in case the user has deleted the encounter type
			if (encounterType == null) {
				throw new IllegalStateException("No Staff Observation encounter type with uuid 151655f0-7c57-40c3-af1a-dbc5cf992440");
			}
			encounterTypes.add(encounterType);
			
			List<Encounter> encounters = encounterService.getEncounters(patient.getPatient(), null, null, null, null, encounterTypes, null,
				    null, null, false);
			//Return the latest encounter
			if (encounters.size() > 0) {
	            model.addAttribute("StaffObservations", encounters.get(encounters.size() - 1));
			} else {
				model.addAttribute("StaffObservations", null);
			}
			encounterTypes.remove(encounterType);
		//Identification
			encounterType = encounterService.getEncounterTypeByUuid("3ca9349a-7237-46aa-bdeb-8d136af317e9");
			//We do this in case the user has deleted the encounter type
			if (encounterType == null) {
				throw new IllegalStateException("No Identification encounter type with uuid 3ca9349a-7237-46aa-bdeb-8d136af317e9");
			}
			encounterTypes.add(encounterType);
			
			encounters = encounterService.getEncounters(patient.getPatient(), null, null, null, null, encounterTypes, null,
				    null, null, false);
			//Return the latest encounter
			if (encounters.size() > 0) {
	            model.addAttribute("Identification", encounters.get(encounters.size() - 1));
			} else {
				model.addAttribute("Identification", null);
			}
			encounterTypes.remove(encounterType);
		//Emergency Contact
			encounterType = encounterService.getEncounterTypeByUuid("2e19aee6-6bc4-4311-8d71-2c4dfb15b8ba");
			//We do this in case the user has deleted the encounter type
			if (encounterType == null) {
				throw new IllegalStateException("No Emergency Contact encounter type with uuid 2e19aee6-6bc4-4311-8d71-2c4dfb15b8ba");
			}
			encounterTypes.add(encounterType);
			
			encounters = encounterService.getEncounters(patient.getPatient(), null, null, null, null, encounterTypes, null,
				    null, null, false);
			//Return the latest encounter
			if (encounters.size() > 0) {
	            model.addAttribute("EmergencyContact", encounters.get(encounters.size() - 1));
			} else {
				model.addAttribute("EmergencyContact", null);
			}
			encounterTypes.remove(encounterType);
		//Family History
			encounterType = encounterService.getEncounterTypeByUuid("e04dc582-5205-45a2-9f75-f3a998fc705b");
			//We do this in case the user has deleted the encounter type
			if (encounterType == null) {
				throw new IllegalStateException("No Family History encounter type with uuid e04dc582-5205-45a2-9f75-f3a998fc705b");
			}
			encounterTypes.add(encounterType);
			
			encounters = encounterService.getEncounters(patient.getPatient(), null, null, null, null, encounterTypes, null,
				    null, null, false);
			//Return the latest encounter
			if (encounters.size() > 0) {
	            model.addAttribute("FamilyHistory", encounters.get(encounters.size() - 1));
			} else {
				model.addAttribute("FamilyHistory", null);
			}
			encounterTypes.remove(encounterType);
		//Education Background
			encounterType = encounterService.getEncounterTypeByUuid("0e625626-7973-4dd0-892f-eb90f6e58c56");
			//We do this in case the user has deleted the encounter type
			if (encounterType == null) {
				throw new IllegalStateException("No Education Background encounter type with uuid 0e625626-7973-4dd0-892f-eb90f6e58c56");
			}
			encounterTypes.add(encounterType);
			
			encounters = encounterService.getEncounters(patient.getPatient(), null, null, null, null, encounterTypes, null,
				    null, null, false);
			//Return the latest encounter
			if (encounters.size() > 0) {
	            model.addAttribute("EducationBackground", encounters.get(encounters.size() - 1));
			} else {
				model.addAttribute("EducationBackground", null);
			}
			encounterTypes.remove(encounterType);
		//Relationship Information
			encounterType = encounterService.getEncounterTypeByUuid("a2790188-86f4-466d-ae30-ee0f336b5793");
			//We do this in case the user has deleted the encounter type
			if (encounterType == null) {
				throw new IllegalStateException("No Relationship Information encounter type with uuid a2790188-86f4-466d-ae30-ee0f336b5793");
			}
			encounterTypes.add(encounterType);
			
			encounters = encounterService.getEncounters(patient.getPatient(), null, null, null, null, encounterTypes, null,
				    null, null, false);
			//Return the latest encounter
			if (encounters.size() > 0) {
	            model.addAttribute("RelationshipInformation", encounters.get(encounters.size() - 1));
			} else {
				model.addAttribute("RelationshipInformation", null);
			}
			encounterTypes.remove(encounterType);
		//Case Creation
			encounterType = encounterService.getEncounterTypeByUuid("bf7797d3-8004-42ab-a3a0-3e61197b6f96");
			//We do this in case the user has deleted the encounter type
			if (encounterType == null) {
				throw new IllegalStateException("No Case Creation encounter type with uuid bf7797d3-8004-42ab-a3a0-3e61197b6f96");
			}
			encounterTypes.add(encounterType);
			
			encounters = encounterService.getEncounters(patient.getPatient(), null, null, null, null, encounterTypes, null,
				    null, null, false);
			//Return the latest encounter
			if (encounters.size() > 0) {
	            model.addAttribute("CaseCreation", encounters.get(encounters.size() - 1));
			} else {
				model.addAttribute("CaseCreation", null);
			}
			encounterTypes.remove(encounterType);
	}
}