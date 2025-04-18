(define (problem depotprob17) (:domain depot)
(:objects
	depot0 depot1 depot2 - depot
	distributor0 distributor1 distributor2 - distributor
	truck0 truck1 - truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 - pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 - crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 - hoist)
(:init
	(at pallet0 depot0)
	(clear crate13)
	(at pallet1 depot1)
	(clear crate10)
	(at pallet2 depot2)
	(clear crate16)
	(at pallet3 distributor0)
	(clear crate12)
	(at pallet4 distributor1)
	(clear crate18)
	(at pallet5 distributor2)
	(clear crate3)
	(at pallet6 distributor1)
	(clear pallet6)
	(at pallet7 depot1)
	(clear crate4)
	(at truck0 distributor1)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 411)
	(at truck1 depot2)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 295)
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
	(at hoist6 distributor1)
	(available hoist6)
	(at hoist7 depot1)
	(available hoist7)
	(at hoist8 distributor2)
	(available hoist8)
	(at hoist9 depot2)
	(available hoist9)
	(at hoist10 distributor1)
	(available hoist10)
	(at crate0 distributor0)
	(on crate0 pallet3)
	(= (weight crate0) 54)
	(at crate1 depot0)
	(on crate1 pallet0)
	(= (weight crate1) 97)
	(at crate2 distributor0)
	(on crate2 crate0)
	(= (weight crate2) 80)
	(at crate3 distributor2)
	(on crate3 pallet5)
	(= (weight crate3) 15)
	(at crate4 depot1)
	(on crate4 pallet7)
	(= (weight crate4) 73)
	(at crate5 distributor1)
	(on crate5 pallet4)
	(= (weight crate5) 64)
	(at crate6 distributor0)
	(on crate6 crate2)
	(= (weight crate6) 6)
	(at crate7 depot2)
	(on crate7 pallet2)
	(= (weight crate7) 25)
	(at crate8 depot1)
	(on crate8 pallet1)
	(= (weight crate8) 60)
	(at crate9 depot0)
	(on crate9 crate1)
	(= (weight crate9) 44)
	(at crate10 depot1)
	(on crate10 crate8)
	(= (weight crate10) 39)
	(at crate11 depot0)
	(on crate11 crate9)
	(= (weight crate11) 73)
	(at crate12 distributor0)
	(on crate12 crate6)
	(= (weight crate12) 33)
	(at crate13 depot0)
	(on crate13 crate11)
	(= (weight crate13) 56)
	(at crate14 depot2)
	(on crate14 crate7)
	(= (weight crate14) 84)
	(at crate15 depot2)
	(on crate15 crate14)
	(= (weight crate15) 29)
	(at crate16 depot2)
	(on crate16 crate15)
	(= (weight crate16) 77)
	(at crate17 distributor1)
	(on crate17 crate5)
	(= (weight crate17) 45)
	(at crate18 distributor1)
	(on crate18 crate17)
	(= (weight crate18) 74)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 pallet4)
		(on crate1 crate15)
		(on crate3 pallet3)
		(on crate4 crate5)
		(on crate5 crate9)
		(on crate6 crate11)
		(on crate7 crate0)
		(on crate8 crate16)
		(on crate9 pallet6)
		(on crate10 crate1)
		(on crate11 pallet2)
		(on crate12 crate10)
		(on crate13 pallet1)
		(on crate14 pallet7)
		(on crate15 crate3)
		(on crate16 pallet0)
		(on crate17 pallet5)
		(on crate18 crate7)
	)
)

(:metric minimize (total-time)))
