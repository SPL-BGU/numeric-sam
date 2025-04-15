(define (problem depotprob53) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate2)
	(at pallet1 distributor0)
	(clear crate0)
	(at pallet2 distributor1)
	(clear pallet2)
	(at truck0 distributor1)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 428)
	(at truck1 distributor1)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 342)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor0)
	(on crate0 pallet1)
	(= (weight crate0) 11)
	(at crate1 depot0)
	(on crate1 pallet0)
	(= (weight crate1) 4)
	(at crate2 depot0)
	(on crate2 crate1)
	(= (weight crate2) 33)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 pallet1)
		(on crate1 pallet0)
		(on crate2 crate1)
	)
)

(:metric minimize (total-time)))
