(define (problem depotprob100) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 distributor0)
	(clear crate1)
	(at pallet2 distributor1)
	(clear crate2)
	(at truck0 distributor0)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 371)
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
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 crate1)
		(on crate1 pallet2)
		(on crate2 pallet0)
	)
)

(:metric minimize (total-time)))
