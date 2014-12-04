#= require jquery
#= require jquery_ujs
#= require moment
#= require flipclock
#= require_self

$ ->
  $clockBlock = $('.clock')
  t1 = new Date(2014, 11, 10, 0, 0, 0, 0)
  t2 = new Date()

  seconds = Math.floor((t1.getTime() - t2.getTime()) / 1000)
  clock = $clockBlock.FlipClock seconds,
		clockFace: 'DailyCounter'
		countdown: true
