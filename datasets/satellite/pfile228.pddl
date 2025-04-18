(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	thermograph1 - mode
	infrared3 - mode
	infrared2 - mode
	thermograph0 - mode
	GroundStation0 - direction
	Star2 - direction
	GroundStation1 - direction
	Planet3 - direction
	Star4 - direction
	Planet5 - direction
	Planet6 - direction
)
(:init
	(supports instrument0 thermograph0)
	(supports instrument0 infrared3)
	(calibration_target instrument0 GroundStation1)
	(supports instrument1 thermograph0)
	(supports instrument1 infrared2)
	(supports instrument1 infrared3)
	(calibration_target instrument1 GroundStation1)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Planet6)
	(= (data_capacity satellite0) 1000)
	(= (fuel satellite0) 160)
	(= (data Planet3 thermograph1) 224)
	(= (data Star4 thermograph1) 262)
	(= (data Planet5 thermograph1) 287)
	(= (data Planet6 thermograph1) 64)
	(= (data Planet3 infrared3) 24)
	(= (data Star4 infrared3) 144)
	(= (data Planet5 infrared3) 295)
	(= (data Planet6 infrared3) 282)
	(= (data Planet3 infrared2) 67)
	(= (data Star4 infrared2) 234)
	(= (data Planet5 infrared2) 74)
	(= (data Planet6 infrared2) 135)
	(= (data Planet3 thermograph0) 286)
	(= (data Star4 thermograph0) 38)
	(= (data Planet5 thermograph0) 116)
	(= (data Planet6 thermograph0) 19)
	(= (slew_time Star2 GroundStation0) 69.1)
	(= (slew_time GroundStation0 Star2) 69.1)
	(= (slew_time Star2 GroundStation1) 33.84)
	(= (slew_time GroundStation1 Star2) 33.84)
	(= (slew_time GroundStation1 GroundStation0) 13.04)
	(= (slew_time GroundStation0 GroundStation1) 13.04)
	(= (slew_time Planet3 GroundStation0) 0.7144)
	(= (slew_time GroundStation0 Planet3) 0.7144)
	(= (slew_time Planet3 GroundStation1) 12.75)
	(= (slew_time GroundStation1 Planet3) 12.75)
	(= (slew_time Planet3 Star2) 62.13)
	(= (slew_time Star2 Planet3) 62.13)
	(= (slew_time Star4 GroundStation0) 1.981)
	(= (slew_time GroundStation0 Star4) 1.981)
	(= (slew_time Star4 GroundStation1) 47.07)
	(= (slew_time GroundStation1 Star4) 47.07)
	(= (slew_time Star4 Star2) 49.51)
	(= (slew_time Star2 Star4) 49.51)
	(= (slew_time Star4 Planet3) 7.487)
	(= (slew_time Planet3 Star4) 7.487)
	(= (slew_time Planet5 GroundStation0) 13.32)
	(= (slew_time GroundStation0 Planet5) 13.32)
	(= (slew_time Planet5 GroundStation1) 22.6)
	(= (slew_time GroundStation1 Planet5) 22.6)
	(= (slew_time Planet5 Star2) 0.4709)
	(= (slew_time Star2 Planet5) 0.4709)
	(= (slew_time Planet5 Planet3) 31.81)
	(= (slew_time Planet3 Planet5) 31.81)
	(= (slew_time Planet5 Star4) 60.2)
	(= (slew_time Star4 Planet5) 60.2)
	(= (slew_time Planet6 GroundStation0) 20.41)
	(= (slew_time GroundStation0 Planet6) 20.41)
	(= (slew_time Planet6 GroundStation1) 27.7)
	(= (slew_time GroundStation1 Planet6) 27.7)
	(= (slew_time Planet6 Star2) 33.14)
	(= (slew_time Star2 Planet6) 33.14)
	(= (slew_time Planet6 Planet3) 18.47)
	(= (slew_time Planet3 Planet6) 18.47)
	(= (slew_time Planet6 Star4) 16.27)
	(= (slew_time Star4 Planet6) 16.27)
	(= (slew_time Planet6 Planet5) 1.136)
	(= (slew_time Planet5 Planet6) 1.136)
	(= (data-stored) 0)
	(= (fuel-used) 0)
)
(:goal (and
	(pointing satellite0 Planet5)
	(have_image Planet3 thermograph0)
	(have_image Planet5 thermograph0)
	(have_image Planet6 infrared3)
))
(:metric minimize (fuel-used))

)
