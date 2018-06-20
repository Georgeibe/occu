##
# Interface.getMetadata
# Liest Metadaten eines Datenobjekts aus.
#
# Parameter:
#   objectId: [string] ID des Metadaten-Objects. �blicherweise die Seriennummer des Ger�tes oder Kanals
#   dataId   : [string] Id des zu lesenden Metadatums.
#
# R�ckgabewert: [string]
#   Metadata im Format String
##

set script {
  var o = dom.GetObject(objectId);
  if (o)
  {
    Write(o.MetaData(dataId));
  } else {
    Write("No metadata available");
  }
}

jsonrpc_response [json_toString [hmscript $script args]]
