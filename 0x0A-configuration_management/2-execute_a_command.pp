 # script that manifests killmenow
exec { 'killmenow':
	command => 'pkill killmenow',
}
