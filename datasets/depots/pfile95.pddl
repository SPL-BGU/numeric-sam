(define (problem depotprob100) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate10)
	(at pallet1 distributor0)
	(clear crate11)
	(at pallet2 distributor1)
	(clear crate12)
	(at truck0 distributor0)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 377)
	(at truck1 distributor0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 327)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor1)
	(on crate0 pallet2)
	(= (weight crate0) 39)
	(at crate1 distributor0)
	(on crate1 pallet1)
	(= (weight crate1) 89)
	(at crate2 distributor1)
	(on crate2 crate0)
	(= (weight crate2) 66)
	(at crate3 distributor1)
	(on crate3 crate2)
	(= (weight crate3) 50)
	(at crate4 distributor1)
	(on crate4 crate3)
	(= (weight crate4) 6)
	(at crate5 distributor0)
	(on crate5 crate1)
	(= (weight crate5) 46)
	(at crate6 depot0)
	(on crate6 pallet0)
	(= (weight crate6) 80)
	(at crate7 depot0)
	(on crate7 crate6)
	(= (weight crate7) 41)
	(at crate8 distributor1)
	(on crate8 crate4)
	(= (weight crate8) 46)
	(at crate9 depot0)
	(on crate9 crate7)
	(= (weight crate9) 46)
	(at crate10 depot0)
	(on crate10 crate9)
	(= (weight crate10) 45)
	(at crate11 distributor0)
	(on crate11 crate5)
	(= (weight crate11) 45)
	(at crate12 distributor1)
	(on crate12 crate8)
	(= (weight crate12) 95)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate2)
		(on crate1 crate0)
		(on crate2 pallet1)
		(on crate3 pallet0)
		(on crate6 crate11)
		(on crate8 crate9)
		(on crate9 crate12)
		(on crate10 crate1)
		(on crate11 pallet2)
		(on crate12 crate3)
	)
)

(:metric minimize (total-time)))
