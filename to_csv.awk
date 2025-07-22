BEGIN { print "filename,solver_command,timestamp,output,real_time,user_time,sys_time,exit_code" }
/COMMAND/ {
	split($NF,a,"/")
	file=a[2]
	solver=$2
	for (i = 3; i < NF; ++i) {
		solver = solver " " $i
	}
}
/TIMESTAMP/ { timestamp=$2 }
/OUTPUT/ { output=$2 }
/real:/ { real=$2 }
/user:/ { user=$2 }
/sys:/ { sys=$2 }
/EXIT CODE/ {
	print file "," solver "," timestamp "," output "," real "," user "," sys "," $3
}
