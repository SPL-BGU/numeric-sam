(define (problem depotprob63) (:domain depot)
(:objects
	depot0 depot1 depot2 - depot
	distributor0 distributor1 distributor2 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 - pallet
	crate0 crate1 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 - hoist)
(:init
	(at pallet0 depot0)
	(clear pallet0)
	(at pallet1 depot1)
	(clear pallet1)
	(at pallet2 depot2)
	(clear pallet2)
	(at pallet3 distributor0)
	(clear pallet3)
	(at pallet4 distributor1)
	(clear pallet4)
	(at pallet5 distributor2)
	(clear pallet5)
	(at pallet6 distributor1)
	(clear pallet6)
	(at pallet7 depot1)
	(clear pallet7)
	(at pallet8 distributor2)
	(clear pallet8)
	(at pallet9 distributor0)
	(clear pallet9)
	(at pallet10 depot1)
	(clear crate0)
	(at pallet11 distributor0)
	(clear pallet11)
	(at pallet12 depot1)
	(clear crate1)
	(at pallet13 distributor2)
	(clear pallet13)
	(at truck0 distributor0)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 426)
	(at truck1 distributor2)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 290)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 distributor0)
	(available hoist3)
	(at hoist4 distributor1)
	(available hoist4)
	(at hoist5 distributor2)
	(available hoist5)
	(at hoist6 depot2)
	(available hoist6)
	(at crate0 depot1)
	(on crate0 pallet10)
	(= (weight crate0) 38)
	(at crate1 depot1)
	(on crate1 pallet12)
	(= (weight crate1) 96)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 pallet10)
		(on crate1 pallet5)
	)
)

(:metric minimize (total-time)))
