#------------------------------
#Name:  Animesh Patel
#Date:  Feb-25, 2018 
#Project: Chapter 6 
#------------------------------

#Date 
date()
#Defaut is YYYY-MM-DD Format
xd <- as.Date("2020-01-25")

xd+1 
str(xd)
weekdays(xd)

xd+0:6
weekdays(xd+0:5)
startdt <- as.Date("2020-01-01")
seq(startdt, startdt+100,10)
month(seq(startdt, startdt+100,10))

Sys.localeconv()

#--Different Formats
as.Date("5 Aug 2016", format = "%d %b %Y")
# Format Description
# %Y Year with century.
# %y Year without century (00-99). Values 00 to 68 are prefixed by 20, and
# values 69 to 99 are prefixed by 19.
# %m Month as decimal number (01-12).
# %B Full month name in the current locale. (Also matches abbreviated name
#                                            on input.)
# %b Abbreviated month name in the current locale. (Also matches full name
#                                                   on input.)
# %d Day of the month as a decimal number (01-31). You don't need to add
# the leading zero when converting text to Date, but when you format a
# Date as text, R adds the leading zero.
# %A Full weekday name in the current locale. (Also matches abbreviated
#                                              name on input.)
# %a Abbreviated weekday name in the current locale. (Also matches full
#                                                     name on input.)
# %w Weekday as decimal number (0-6, with Sunday being 0).


#TO convert data into specific format -> Use FORMAT argument.
as.Date("5/10/2019",format = "%d/%m/%Y")
as.Date("5/AUG/2019",format = "%d/%b/%Y")
as.Date("5/July/2019",format = "%d/%B/%Y")

#Adding Time Information to Dates
# as.POSIXct() and as.POSIXlt().

apollo <- "July 20, 1969, 20:17:39" 
apl.fmt <- "%B %d, %Y, %H:%M:%S"
xp <- as.POSIXct(apollo, format = apl.fmt)
xp
xp <- as.POSIXct(apollo, format = apl.fmt,tz="UTC")
xp
format(xp, "%d day of %m month in %y")
# POSIXct object store value as seconds from 1JAN1070. So, adding, removing, has to
# be in seconds.

apollo <- as.POSIXct("1969-07-20")
xp <- as.POSIXct("1950-01-01")
dtv <- seq(xp, by ="10 years", length.out = 4)
dtv
dtv > apollo

# Extraction
xlt <- as.POSIXlt(apollo)
xlt$year
xlt$mon
xlt$date

unclass(xlt) 






