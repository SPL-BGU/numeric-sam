(define (problem depotprob86) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate11)
	(at pallet1 distributor0)
	(clear crate13)
	(at pallet2 distributor1)
	(clear crate14)
	(at truck0 depot0)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 350)
	(at truck1 distributor0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 382)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor0)
	(on crate0 pallet1)
	(= (weight crate0) 67)
	(at crate1 depot0)
	(on crate1 pallet0)
	(= (weight crate1) 94)
	(at crate2 distributor0)
	(on crate2 crate0)
	(= (weight crate2) 36)
	(at crate3 depot0)
	(on crate3 crate1)
	(= (weight crate3) 87)
	(at crate4 distributor0)
	(on crate4 crate2)
	(= (weight crate4) 38)
	(at crate5 distributor1)
	(on crate5 pallet2)
	(= (weight crate5) 16)
	(at crate6 distributor1)
	(on crate6 crate5)
	(= (weight crate6) 83)
	(at crate7 depot0)
	(on crate7 crate3)
	(= (weight crate7) 51)
	(at crate8 distributor1)
	(on crate8 crate6)
	(= (weight crate8) 92)
	(at crate9 distributor0)
	(on crate9 crate4)
	(= (weight crate9) 94)
	(at crate10 depot0)
	(on crate10 crate7)
	(= (weight crate10) 69)
	(at crate11 depot0)
	(on crate11 crate10)
	(= (weight crate11) 86)
	(at crate12 distributor1)
	(on crate12 crate8)
	(= (weight crate12) 33)
	(at crate13 distributor0)
	(on crate13 crate9)
	(= (weight crate13) 61)
	(at crate14 distributor1)
	(on crate14 crate12)
	(= (weight crate14) 1)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate3)
		(on crate1 crate13)
		(on crate3 crate4)
		(on crate4 crate7)
		(on crate5 crate14)
		(on crate6 crate1)
		(on crate7 pallet0)
		(on crate8 crate5)
		(on crate9 crate12)
		(on crate10 crate6)
		(on crate12 pallet2)
		(on crate13 crate9)
		(on crate14 pallet1)
	)
)

(:metric minimize (fuel-cost)))
