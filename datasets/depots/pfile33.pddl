(define (problem depotprob44) (:domain depot)
(:objects
	depot0 - depot
	distributor0 distributor1 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 - pallet
	crate0 crate1 crate2 crate3 crate4 - crate
	hoist0 hoist1 hoist2 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate2)
	(at pallet1 distributor0)
	(clear crate1)
	(at pallet2 distributor1)
	(clear crate4)
	(at truck0 depot0)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 377)
	(at truck1 depot0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 348)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 distributor0)
	(available hoist1)
	(at hoist2 distributor1)
	(available hoist2)
	(at crate0 distributor0)
	(on crate0 pallet1)
	(= (weight crate0) 3)
	(at crate1 distributor0)
	(on crate1 crate0)
	(= (weight crate1) 14)
	(at crate2 depot0)
	(on crate2 pallet0)
	(= (weight crate2) 98)
	(at crate3 distributor1)
	(on crate3 pallet2)
	(= (weight crate3) 100)
	(at crate4 distributor1)
	(on crate4 crate3)
	(= (weight crate4) 86)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate1 crate3)
		(on crate2 pallet0)
		(on crate3 pallet2)
		(on crate4 pallet1)
	)
)

(:metric minimize (fuel-cost)))
