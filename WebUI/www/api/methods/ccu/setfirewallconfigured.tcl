##
# CCU.setFirewallConfigured
#Legt die Datei /etc/config/firewallConfigured an
#
# Parameter:
#  userName
#
# R�ckgabewert: immer true
##

catch {exec touch /etc/config/firewallConfigured}

jsonrpc_response true


