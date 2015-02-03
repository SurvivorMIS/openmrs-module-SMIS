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
package org.openmrs.module.SurvivorMIS;


import org.apache.commons.logging.Log; 
import org.apache.commons.logging.LogFactory;
import org.openmrs.Concept;
import org.openmrs.ConceptName;
import org.openmrs.ConceptNameTag;
import org.openmrs.GlobalProperty;
import org.openmrs.Location;
import org.openmrs.LocationTag;
import org.openmrs.api.AdministrationService;
import org.openmrs.api.ConceptService;
import org.openmrs.api.FormService;
import org.openmrs.api.LocationService;
import org.openmrs.api.context.Context;
import org.openmrs.module.BaseModuleActivator;
import org.openmrs.module.Module;
import org.openmrs.module.ModuleFactory;
import org.openmrs.module.ModuleActivator;
import org.openmrs.module.htmlformentry.HtmlFormEntryService;
import org.openmrs.module.htmlformentryui.HtmlFormUtil;
import org.openmrs.ui.framework.resource.ResourceFactory;

import java.util.Arrays;
import java.util.List;

/**
 * This class contains the logic that is run every time this module is either started or stopped.
 */
public class SurvivorMISActivator implements ModuleActivator {
	
	protected Log log = LogFactory.getLog(getClass());
		
	/**
	 * @see ModuleActivator#willRefreshContext()
	 */
	public void willRefreshContext() {
		log.info("Refreshing SurvivorMIS");
	}
	
	/**
	 * @see ModuleActivator#contextRefreshed()
	 */
	public void contextRefreshed() {
		log.info("SurvivorMIS refreshed");
	}
	
	/**
	 * @see ModuleActivator#willStart()
	 */
	public void willStart() {
		log.info("Starting SurvivorMIS");
	}
	
	/**
	 * @see ModuleActivator#started()
	 */
	public void started() {
		try{
			/**Setup the HTMLForms using the form service
			Commenting out at the moment because of an error
			FormService formService = Context.getFormService();
            HtmlFormEntryService htmlFormEntryService = Context.getService(HtmlFormEntryService.class);
            setupHtmlForms(formService, htmlFormEntryService);*/
			log.info("SurvivorMIS started");
		}
		catch (Exception ex) {
            Module mod = ModuleFactory.getModuleById("SurvivorMIS");
            ModuleFactory.stopModule(mod);
            throw new RuntimeException("Failed to set up the SurvivorMIS module", ex);
        }
	}
	
	/**
	 * @see ModuleActivator#willStop()
	 */
	public void willStop() {
		log.info("Stopping SurvivorMIS");
	}
	
	/**
	 * @see ModuleActivator#stopped()
	 */
	public void stopped() {
		log.info("SurvivorMIS stopped");
	}
	
	private void setupHtmlForms(FormService formService, HtmlFormEntryService htmlFormEntryService) throws Exception {
        try {
            ResourceFactory resourceFactory = ResourceFactory.getInstance();
            /**Note: Separate Form names by a comma*/
            List<String> htmlforms = Arrays.asList(
            		"SurvivorMIS:htmlforms/Personal_Information_Section_A.xml"
            );

            for (String htmlform : htmlforms) {
                HtmlFormUtil.getHtmlFormFromUiResource(resourceFactory, formService, htmlFormEntryService, htmlform);
            }
        }
        catch (Exception e) {
            // this is a hack to get component test to pass until we find the proper way to mock this
            if (ResourceFactory.getInstance().getResourceProviders() == null) {
                log.error("Unable to load HTML forms--this error is expected when running component tests, but it is an error if you see it in production");
            }
            else {
                throw e;
            }
        }
    }
}
