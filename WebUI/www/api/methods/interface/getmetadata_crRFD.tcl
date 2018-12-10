 ##
# Interface.getMetadata_crRFD
# Liest Metadaten eines Datenobjects, welche vom crRFD gespeichert wurden
#
# Parameter:
#   interface:   [string] Bezeichnung der Schnittstelle
#   objectId: [string] ID des Metadaten-Objects. �blicherweise die Seriennummer des Ger�tes oder Kanals
#   dataId   : [string] Id des zu setzenden Metadatums. Diese ID kann frei gew�hlt werden


set objectId $args(objectId)
set dataId $args(dataId)

set result [xmlrpc $interface(URL) getMetadata [list string $objectId] [list string $dataId]]

jsonrpc_response [json_toString $result]