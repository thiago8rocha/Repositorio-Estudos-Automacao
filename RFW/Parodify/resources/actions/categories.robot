***Settings***
Documentation       Ações da página de categorias

***Keywords***
Open Album From
    [Arguments]     ${artist_name}

    Click       xpath=//p[contains(text(),  "${artist_name}")]/..
    Wait For Elements State     xpath=//h2[contains(text(), "Músicas")]      visible     10

Play Song
    [Arguments]     ${song_name}

    Click       xpath=//h2[contains(text(), "${song_name}")]/../..//div[contains(@class, "play")]//a

Song Should Be Playing
    [Arguments]    ${song_name} 
    Get Style   xpath=//h2[contains(text(), "${song_name}")]/../../..    color   equal   rgb(255, 0, 180)