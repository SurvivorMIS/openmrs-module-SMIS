<div class="info-section most-recent-encounter">
    <div class="info-header">
        
        <h3>TITLE</h3>
    </div>
    <div class="info-body">

        <% if (encounter) { %>
            <a class="visit-link" href="${ ui.pageLink("htmlformentryui", "htmlform/viewEncounterWithHtmlForm", [ encounter: it.uuid, returnUrl: ui.thisUrl() ]) }">
        <% } else { %>
                ${ui.message("coreapps.none")}
        <% } %>
    </div>
</div>