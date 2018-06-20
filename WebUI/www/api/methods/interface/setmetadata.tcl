 ##
# Interface.setMetadata
# F�gt einem Datenobjekt Metadaten hinzu.
#
# Parameter:
#   objectId: [string] ID des Metadaten-Objects. �blicherweise die Seriennummer des Ger�tes oder Kanals
#   dataId   : [string] Id des zu setzenden Metadatums. Diese ID kann frei gew�hlt werden
#   value    : [string] Wert, der gespeichert werden soll.
#

set script {
  var o = dom.GetObject(objectId);
  if (o)
  {
    o.RemoveMetaData(dataId);
    o.AddMetaData(dataId, value);
    Write(dataId#": "#o.MetaData(dataId));
  } else {
    Write("Not able to set the metadata");
  }
}

jsonrpc_response [json_toString [hmscript $script args]]
