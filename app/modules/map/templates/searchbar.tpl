<div id="header">
    <div id="searchbar" class="searchbar">
        <form id="search-form" onsubmit="submitMapSearch(this);return false">
            <fieldset class="inputcombo">
                <div class="searchwrapper">
                    <input id="search_terms"
                        class="search-form"
                        type="text"
                        value="{$searchTerms|default:''}"
                        name="filter"
                        placeholder={"MAP_SEARCH_PLACEHOLDER"|getLocalizedString}
                        onfocus="androidPlaceholderFix(this);showSearchFormButtons();" />
                </div>
                <div id="toolbar-buttons">
                    <div class="toolbar-button">
                        <a href="{$bookmarksURL}"><img src="/modules/map/images/map-button-favorites.png"/></a>
                    </div>
                    {if $mapURL}
                        <div class="toolbar-button">
                            <a id="mapLink" href="{$mapURL}"><img src="/modules/map/images/map-button-map.png"/></a>
                        </div>
                    {else}
                        <div class="toolbar-button">
                            <a id="browseLink" href="{$browseURL}"><img src="/modules/map/images/map-button-browse.png"/></a>
                        </div>
                    {/if}
                </div>
                <div id="search-options">
                    {if $campuses}
                        {include file="findInclude:modules/map/templates/selectcampus.tpl" campuses=$campuses}
                    {/if}
                    <input type="button" id="searchButton" onclick="submitMapSearch(this.form)" value={"SEARCHBAR_BUTTON_SEARCH"|getLocalizedString} />
                    <input type="button" id="clearButton" onclick="clearSearch(this.form)" value={"SEARCHBAR_BUTTON_CLEAR"|getLocalizedString} />
                    <input type="button" id="cancelButton" onclick="hideSearchFormButtons()" value={"SEARCHBAR_BUTTON_CANCEL"|getLocalizedString} />
                </div>
            </fieldset>
        </form>
    </div>
</div>
