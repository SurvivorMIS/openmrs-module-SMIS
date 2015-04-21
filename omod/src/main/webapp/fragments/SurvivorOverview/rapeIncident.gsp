<div class="info-section rape-incident">
    <div class="info-header">
        <h3>${ ui.message("SurvivorMIS.rapeIncident.fragment.label") }</h3>
    </div>
    <div class="info-body">
	<ul>
		<!--Rape Incidents-->
        <% if (AllRapeIncidentEncounters && AllRapeIncidentEncounters.size > 0) { %>
        	<ul>
        	<% AllRapeIncidentEncounters.each { %>
            	<li><a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/viewEncounterWithHtmlForm", [ patientId: patient.patient.id, encounter: it.id, editStyle: "simple", returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.rapeIncident.incidentDate.label") } ${ ui.formatDatetimePretty(it.encounterDatetime) }</a></li>
        	<% } %>
        	<% if (activeVisit) { %>
        		<li style="margin-left:20px;"><a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/enterHtmlFormWithSimpleUi", [ patientId: patient.patient.id, visitId: activeVisit.visit.id, formUuid: "b524b6a3-cd2a-479f-b3f9-f1abf60419ce",returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.rapeIncident.addRapeIncident.label") }</a></li>
        	<% } %>
        	</ul>
        	<li><b>${ ui.message("SurvivorMIS.rapeIncident.survivorSupport.label") }</b></li>
        	<ul>
        		<% if (AllRapeIncidentSurvivorSupportEncounters && AllRapeIncidentSurvivorSupportEncounters.size > 0) { %>
	        		<% AllRapeIncidentSurvivorSupportEncounters.each { %>
	            	<li style="margin-left:20px;"><a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/viewEncounterWithHtmlForm", [ patientId: patient.patient.id, encounter: it.id, editStyle: "simple", returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.rapeIncident.survivorSupport.view.label") }</a></li>
	        		<% } %>
        		<% } else { %>
		        	<!--Note that these names are hard coded into the view using the module messages.properties file-->
		        	<% if (activeVisit) { %>
		        		<li style="margin-left:20px;"><a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/enterHtmlFormWithSimpleUi", [ patientId: patient.patient.id, visitId: activeVisit.visit.id, formUuid: "20a4f00f-245c-43c1-b148-4600799d9821",returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.rapeIncident.addSurvivorSupport.label") }</a></li>
		        	<% } %> 
	        	<% } %>
        	</ul>
        <% } else { %>
        	<!--Note that these names are hard coded into the view using the module messages.properties file-->
        	<% if (activeVisit) { %>
        		<li><a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/enterHtmlFormWithSimpleUi", [ patientId: patient.patient.id, visitId: activeVisit.visit.id, formUuid: "b524b6a3-cd2a-479f-b3f9-f1abf60419ce",returnUrl: ui.thisUrl() ]) }">${ ui.message("SurvivorMIS.rapeIncident.addRapeIncident.label") }</a></li>
        	<% } else { %>
        		<li>${ ui.message("SurvivorMIS.rapeIncident.no_active_visit.message") } an ${ ui.message("SurvivorMIS.rapeIncident.rapeIncident.label") }</li>
        	<% } %>
        <% } %>  
	</ul>
    </div>
</div>