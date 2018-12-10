 ##
# Interface.setMetadata_crRFD
# F�gt einem Datenobjekt Metadaten in der HmIP-Cloud hinzu.
#
# Parameter:
#   interface:   [string] Bezeichnung der Schnittstelle
#   objectId: [string] ID des Metadaten-Objects. �blicherweise die Seriennummer des Ger�tes oder Kanals
#   dataId   : [string] Id des zu setzenden Metadatums. Diese ID kann frei gew�hlt werden
#   value    : [string] Wert, der gespeichert werden soll.
#

set objectId $args(objectId)
set dataId $args(dataId)
set value $args(value)

set result [xmlrpc $interface(URL) setMetadata [list string $objectId] [list string $dataId] $value]

jsonrpc_response $result