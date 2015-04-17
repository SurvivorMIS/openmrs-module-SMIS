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
import org.openmrs.module.emrapi.encounter.EncounterObservationServiceHelper;
import org.openmrs.module.emrapi.encounter.ObservationMapper;
import org.openmrs.ui.framework.annotation.FragmentParam;
import org.openmrs.ui.framework.annotation.SpringBean;
import org.openmrs.ui.framework.fragment.FragmentModel;

import java.util.ArrayList;
import java.util.List;

public class RapeIncidentFragmentController {
	
	public void controller(FragmentModel model, @FragmentParam("patientId") PatientDomainWrapper patient,
	                       @SpringBean("encounterService") EncounterService encounterService) {
		//Define the encounterTypes array
		List<EncounterType> encounterTypes = new ArrayList<EncounterType>();
		
		//Rape Incident Encounter
			EncounterType encounterType = encounterService.getEncounterTypeByUuid("233d766d-0218-4a93-a395-7d3226d67373");
			//We do this in case the user has deleted the encounter type
			if (encounterType == null) {
				throw new IllegalStateException("No Rape encounter type with uuid 233d766d-0218-4a93-a395-7d3226d67373");
			}
			encounterTypes.add(encounterType);
			
			List<Encounter> encounters = encounterService.getEncounters(patient.getPatient(), null, null, null, null, encounterTypes, null,
				    null, null, false);
			
			//Return all encounters
			if (encounters.size() > 0) {
				model.addAttribute("AllRapeIncidentEncounters", encounters);
				
			} else {
				model.addAttribute("AllRapeIncidentEncounters", null);
			}
			encounterTypes.remove(encounterType);
		
	}
}