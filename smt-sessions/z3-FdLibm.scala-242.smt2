; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1451 () Bool)

(assert start!1451)

(declare-fun b!7453 () Bool)

(declare-fun res!6148 () Bool)

(declare-fun e!3842 () Bool)

(assert (=> b!7453 (=> (not res!6148) (not e!3842))))

(declare-datatypes ((array!586 0))(
  ( (array!587 (arr!260 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!260 (_ BitVec 32))) )
))
(declare-fun f!79 () array!586)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!7453 (= res!6148 (Q!0 (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!7454 () Bool)

(declare-fun res!6157 () Bool)

(assert (=> b!7454 (=> (not res!6157) (not e!3842))))

(assert (=> b!7454 (= res!6157 (Q!0 (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!7455 () Bool)

(declare-fun res!6155 () Bool)

(assert (=> b!7455 (=> (not res!6155) (not e!3842))))

(assert (=> b!7455 (= res!6155 (Q!0 (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!7456 () Bool)

(declare-fun res!6150 () Bool)

(assert (=> b!7456 (=> (not res!6150) (not e!3842))))

(declare-fun fInv!0 (array!586) Bool)

(assert (=> b!7456 (= res!6150 (fInv!0 f!79))))

(declare-fun res!6153 () Bool)

(declare-fun e!3843 () Bool)

(assert (=> start!1451 (=> (not res!6153) (not e!3843))))

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1451 (= res!6153 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1451 e!3843))

(declare-fun array_inv!210 (array!586) Bool)

(assert (=> start!1451 (array_inv!210 f!79)))

(declare-fun q!51 () array!586)

(assert (=> start!1451 (array_inv!210 q!51)))

(assert (=> start!1451 true))

(declare-fun xx!50 () array!586)

(assert (=> start!1451 (array_inv!210 xx!50)))

(declare-fun b!7457 () Bool)

(declare-fun res!6152 () Bool)

(assert (=> b!7457 (=> (not res!6152) (not e!3843))))

(declare-fun xxInv!0 (array!586) Bool)

(assert (=> b!7457 (= res!6152 (xxInv!0 xx!50))))

(declare-fun b!7458 () Bool)

(declare-fun res!6151 () Bool)

(assert (=> b!7458 (=> (not res!6151) (not e!3842))))

(declare-fun qInv!0 (array!586) Bool)

(assert (=> b!7458 (= res!6151 (qInv!0 q!51))))

(declare-fun b!7459 () Bool)

(declare-fun res!6149 () Bool)

(assert (=> b!7459 (=> (not res!6149) (not e!3842))))

(assert (=> b!7459 (= res!6149 (bvsle i!190 jz!36))))

(declare-fun b!7460 () Bool)

(declare-fun res!6146 () Bool)

(assert (=> b!7460 (=> (not res!6146) (not e!3842))))

(assert (=> b!7460 (= res!6146 (Q!0 (select (arr!260 f!79) i!190)))))

(declare-fun b!7461 () Bool)

(declare-datatypes ((Unit!492 0))(
  ( (Unit!493) )
))
(declare-datatypes ((tuple3!114 0))(
  ( (tuple3!115 (_1!176 Unit!492) (_2!176 (_ BitVec 32)) (_3!157 array!586)) )
))
(declare-fun e!3841 () tuple3!114)

(declare-fun lt!3705 () (_ BitVec 32))

(declare-fun lt!3702 () array!586)

(declare-fun Unit!494 () Unit!492)

(assert (=> b!7461 (= e!3841 (tuple3!115 Unit!494 lt!3705 lt!3702))))

(declare-fun b!7462 () Bool)

(declare-fun e!3844 () Bool)

(assert (=> b!7462 (= e!3844 e!3842)))

(declare-fun res!6156 () Bool)

(assert (=> b!7462 (=> (not res!6156) (not e!3842))))

(assert (=> b!7462 (= res!6156 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!3704 () tuple3!114)

(assert (=> b!7462 (= lt!3704 e!3841)))

(declare-fun c!860 () Bool)

(assert (=> b!7462 (= c!860 (bvsle lt!3705 (bvadd (bvsub (size!260 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!7462 (= lt!3705 #b00000000000000000000000000000000)))

(assert (=> b!7462 (= lt!3702 (array!587 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!7463 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!586 (_ BitVec 32) array!586) tuple3!114)

(assert (=> b!7463 (= e!3841 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!3705 lt!3702))))

(declare-fun b!7464 () Bool)

(assert (=> b!7464 (= e!3843 e!3844)))

(declare-fun res!6154 () Bool)

(assert (=> b!7464 (=> (not res!6154) (not e!3844))))

(declare-fun lt!3703 () (_ BitVec 32))

(assert (=> b!7464 (= res!6154 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3703 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3703) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!7464 (= lt!3703 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!7465 () Bool)

(declare-fun res!6147 () Bool)

(assert (=> b!7465 (=> (not res!6147) (not e!3842))))

(assert (=> b!7465 (= res!6147 (Q!0 (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!7466 () Bool)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!7466 (= e!3842 (not (P!3 (select (store (arr!260 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!260 xx!50) #b00000000000000000000000000000000) (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!260 xx!50) #b00000000000000000000000000000001) (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!260 xx!50) #b00000000000000000000000000000010) (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!260 xx!50) #b00000000000000000000000000000011) (select (arr!260 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!260 xx!50) #b00000000000000000000000000000100) (select (arr!260 f!79) i!190)))) i!190))))))

(assert (= (and start!1451 res!6153) b!7457))

(assert (= (and b!7457 res!6152) b!7464))

(assert (= (and b!7464 res!6154) b!7462))

(assert (= (and b!7462 c!860) b!7463))

(assert (= (and b!7462 (not c!860)) b!7461))

(assert (= (and b!7462 res!6156) b!7456))

(assert (= (and b!7456 res!6150) b!7458))

(assert (= (and b!7458 res!6151) b!7459))

(assert (= (and b!7459 res!6149) b!7465))

(assert (= (and b!7465 res!6147) b!7453))

(assert (= (and b!7453 res!6148) b!7454))

(assert (= (and b!7454 res!6157) b!7455))

(assert (= (and b!7455 res!6155) b!7460))

(assert (= (and b!7460 res!6146) b!7466))

(declare-fun m!13651 () Bool)

(assert (=> b!7466 m!13651))

(declare-fun m!13653 () Bool)

(assert (=> b!7466 m!13653))

(declare-fun m!13655 () Bool)

(assert (=> b!7466 m!13655))

(declare-fun m!13657 () Bool)

(assert (=> b!7466 m!13657))

(declare-fun m!13659 () Bool)

(assert (=> b!7466 m!13659))

(declare-fun m!13661 () Bool)

(assert (=> b!7466 m!13661))

(declare-fun m!13663 () Bool)

(assert (=> b!7466 m!13663))

(declare-fun m!13665 () Bool)

(assert (=> b!7466 m!13665))

(declare-fun m!13667 () Bool)

(assert (=> b!7466 m!13667))

(declare-fun m!13669 () Bool)

(assert (=> b!7466 m!13669))

(declare-fun m!13671 () Bool)

(assert (=> b!7466 m!13671))

(declare-fun m!13673 () Bool)

(assert (=> b!7466 m!13673))

(assert (=> b!7466 m!13667))

(declare-fun m!13675 () Bool)

(assert (=> b!7466 m!13675))

(assert (=> b!7453 m!13653))

(assert (=> b!7453 m!13653))

(declare-fun m!13677 () Bool)

(assert (=> b!7453 m!13677))

(declare-fun m!13679 () Bool)

(assert (=> b!7463 m!13679))

(assert (=> b!7454 m!13665))

(assert (=> b!7454 m!13665))

(declare-fun m!13681 () Bool)

(assert (=> b!7454 m!13681))

(assert (=> b!7455 m!13657))

(assert (=> b!7455 m!13657))

(declare-fun m!13683 () Bool)

(assert (=> b!7455 m!13683))

(assert (=> b!7465 m!13651))

(assert (=> b!7465 m!13651))

(declare-fun m!13685 () Bool)

(assert (=> b!7465 m!13685))

(declare-fun m!13687 () Bool)

(assert (=> b!7456 m!13687))

(assert (=> b!7460 m!13673))

(assert (=> b!7460 m!13673))

(declare-fun m!13689 () Bool)

(assert (=> b!7460 m!13689))

(declare-fun m!13691 () Bool)

(assert (=> b!7457 m!13691))

(declare-fun m!13693 () Bool)

(assert (=> b!7458 m!13693))

(declare-fun m!13695 () Bool)

(assert (=> start!1451 m!13695))

(declare-fun m!13697 () Bool)

(assert (=> start!1451 m!13697))

(declare-fun m!13699 () Bool)

(assert (=> start!1451 m!13699))

(check-sat (not b!7455) (not start!1451) (not b!7457) (not b!7454) (not b!7453) (not b!7456) (not b!7466) (not b!7463) (not b!7458) (not b!7460) (not b!7465))
(check-sat)
