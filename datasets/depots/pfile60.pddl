(define (problem depotprob14) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate1)
	(at pallet1 distributor0)
	(clear crate0)
	(at pallet2 distributor1)
	(clear crate3)
	(at truck0 distributor0)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 306)
	(at truck1 distributor0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 238)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor0)
	(on crate0 pallet1)
	(= (weight crate0) 15)
	(at crate1 depot0)
	(on crate1 pallet0)
	(= (weight crate1) 86)
	(at crate2 distributor1)
	(on crate2 pallet2)
	(= (weight crate2) 71)
	(at crate3 distributor1)
	(on crate3 crate2)
	(= (weight crate3) 52)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 pallet2)
		(on crate1 pallet0)
		(on crate2 crate1)
		(on crate3 crate0)
	)
)

(:metric minimize (total-time)))
