(define (problem depotprob36) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate0)
	(at pallet1 distributor0)
	(clear crate5)
	(at pallet2 distributor1)
	(clear crate2)
	(at truck0 distributor0)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 458)
	(at truck1 distributor0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 365)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 depot0)
	(on crate0 pallet0)
	(= (weight crate0) 19)
	(at crate1 distributor0)
	(on crate1 pallet1)
	(= (weight crate1) 97)
	(at crate2 distributor1)
	(on crate2 pallet2)
	(= (weight crate2) 23)
	(at crate3 distributor0)
	(on crate3 crate1)
	(= (weight crate3) 57)
	(at crate4 distributor0)
	(on crate4 crate3)
	(= (weight crate4) 4)
	(at crate5 distributor0)
	(on crate5 crate4)
	(= (weight crate5) 62)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate4)
		(on crate1 crate5)
		(on crate2 pallet0)
		(on crate3 pallet1)
		(on crate4 pallet2)
		(on crate5 crate3)
	)
)

(:metric minimize (total-time)))
