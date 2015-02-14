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
import org.openmrs.Patient;
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
		List<EncounterType> encounterTypes = new ArrayList<EncounterType>();
		
		EncounterType encounterType = encounterService.getEncounterTypeByUuid("a000cb34-9ec1-4344-a1c8-f692232f6edd");

		if (encounterType == null) {
			throw new IllegalStateException("No encounter type with uuid 299336d6-058e-4313-bc42-a8cadfa81b54");
		}
		encounterTypes.add(encounterType);
		
		List<Encounter> encounters = encounterService.getEncounters(patient.getPatient(), null, null, null, null, encounterTypes, null,
			    null, null, false);
		if (encounters.size() > 0) {
            model.addAttribute("encounter", encounters.get(encounters.size() - 1));
		} else {
			model.addAttribute("encounter", null);
		}
	}
}