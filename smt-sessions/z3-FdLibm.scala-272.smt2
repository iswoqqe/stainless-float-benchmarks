; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1665 () Bool)

(assert start!1665)

(declare-fun b!8362 () Bool)

(declare-fun res!6812 () Bool)

(declare-fun e!4716 () Bool)

(assert (=> b!8362 (=> (not res!6812) (not e!4716))))

(declare-datatypes ((array!660 0))(
  ( (array!661 (arr!290 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!290 (_ BitVec 32))) )
))
(declare-fun f!79 () array!660)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun xx!50 () array!660)

(declare-fun q!51 () array!660)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8362 (= res!6812 (P!3 (select (store (arr!290 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000000) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000001) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000010) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000011) (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!290 xx!50) #b00000000000000000000000000000100) (select (arr!290 f!79) i!190)))) i!190)))))

(declare-fun b!8363 () Bool)

(declare-fun res!6811 () Bool)

(assert (=> b!8363 (=> (not res!6811) (not e!4716))))

(declare-fun qInv!0 (array!660) Bool)

(assert (=> b!8363 (= res!6811 (qInv!0 q!51))))

(declare-fun b!8364 () Bool)

(declare-fun e!4713 () Bool)

(declare-fun e!4719 () Bool)

(assert (=> b!8364 (= e!4713 e!4719)))

(declare-fun res!6810 () Bool)

(assert (=> b!8364 (=> (not res!6810) (not e!4719))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4307 () (_ BitVec 32))

(assert (=> b!8364 (= res!6810 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4307 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4307) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!8364 (= lt!4307 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!8365 () Bool)

(declare-fun res!6806 () Bool)

(assert (=> b!8365 (=> (not res!6806) (not e!4716))))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!8365 (= res!6806 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!8366 () Bool)

(declare-fun res!6815 () Bool)

(assert (=> b!8366 (=> (not res!6815) (not e!4716))))

(assert (=> b!8366 (= res!6815 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!8367 () Bool)

(declare-fun jz!36 () (_ BitVec 32))

(declare-fun lt!4305 () array!660)

(declare-fun lt!4308 () (_ BitVec 32))

(declare-datatypes ((Unit!618 0))(
  ( (Unit!619) )
))
(declare-datatypes ((tuple3!174 0))(
  ( (tuple3!175 (_1!223 Unit!618) (_2!223 (_ BitVec 32)) (_3!187 array!660)) )
))
(declare-fun e!4718 () tuple3!174)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!660 (_ BitVec 32) array!660) tuple3!174)

(assert (=> b!8367 (= e!4718 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4308 lt!4305))))

(declare-fun b!8368 () Bool)

(assert (=> b!8368 (= e!4719 e!4716)))

(declare-fun res!6803 () Bool)

(assert (=> b!8368 (=> (not res!6803) (not e!4716))))

(assert (=> b!8368 (= res!6803 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4306 () tuple3!174)

(assert (=> b!8368 (= lt!4306 e!4718)))

(declare-fun c!986 () Bool)

(assert (=> b!8368 (= c!986 (bvsle lt!4308 (bvadd (bvsub (size!290 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!8368 (= lt!4308 #b00000000000000000000000000000000)))

(assert (=> b!8368 (= lt!4305 (array!661 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!8369 () Bool)

(declare-fun res!6814 () Bool)

(assert (=> b!8369 (=> (not res!6814) (not e!4716))))

(assert (=> b!8369 (= res!6814 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!8370 () Bool)

(assert (=> b!8370 (= e!4716 (and (= (bvand i!190 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand i!190 #b10000000000000000000000000000000) (bvand (bvadd i!190 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!8371 () Bool)

(declare-fun res!6808 () Bool)

(assert (=> b!8371 (=> (not res!6808) (not e!4716))))

(assert (=> b!8371 (= res!6808 (bvsle i!190 jz!36))))

(declare-fun b!8372 () Bool)

(declare-fun Unit!620 () Unit!618)

(assert (=> b!8372 (= e!4718 (tuple3!175 Unit!620 lt!4308 lt!4305))))

(declare-fun b!8373 () Bool)

(declare-fun res!6804 () Bool)

(assert (=> b!8373 (=> (not res!6804) (not e!4716))))

(assert (=> b!8373 (= res!6804 (Q!0 (select (arr!290 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!8374 () Bool)

(declare-fun res!6807 () Bool)

(assert (=> b!8374 (=> (not res!6807) (not e!4713))))

(declare-fun xxInv!0 (array!660) Bool)

(assert (=> b!8374 (= res!6807 (xxInv!0 xx!50))))

(declare-fun b!8375 () Bool)

(declare-fun res!6809 () Bool)

(assert (=> b!8375 (=> (not res!6809) (not e!4716))))

(assert (=> b!8375 (= res!6809 (Q!0 (select (arr!290 f!79) i!190)))))

(declare-fun res!6813 () Bool)

(assert (=> start!1665 (=> (not res!6813) (not e!4713))))

(assert (=> start!1665 (= res!6813 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1665 e!4713))

(declare-fun array_inv!240 (array!660) Bool)

(assert (=> start!1665 (array_inv!240 f!79)))

(assert (=> start!1665 (array_inv!240 q!51)))

(assert (=> start!1665 true))

(assert (=> start!1665 (array_inv!240 xx!50)))

(declare-fun b!8376 () Bool)

(declare-fun res!6805 () Bool)

(assert (=> b!8376 (=> (not res!6805) (not e!4716))))

(declare-fun fInv!0 (array!660) Bool)

(assert (=> b!8376 (= res!6805 (fInv!0 f!79))))

(assert (= (and start!1665 res!6813) b!8374))

(assert (= (and b!8374 res!6807) b!8364))

(assert (= (and b!8364 res!6810) b!8368))

(assert (= (and b!8368 c!986) b!8367))

(assert (= (and b!8368 (not c!986)) b!8372))

(assert (= (and b!8368 res!6803) b!8376))

(assert (= (and b!8376 res!6805) b!8363))

(assert (= (and b!8363 res!6811) b!8371))

(assert (= (and b!8371 res!6808) b!8365))

(assert (= (and b!8365 res!6806) b!8369))

(assert (= (and b!8369 res!6814) b!8366))

(assert (= (and b!8366 res!6815) b!8373))

(assert (= (and b!8373 res!6804) b!8375))

(assert (= (and b!8375 res!6809) b!8362))

(assert (= (and b!8362 res!6812) b!8370))

(declare-fun m!12631 () Bool)

(assert (=> start!1665 m!12631))

(declare-fun m!12633 () Bool)

(assert (=> start!1665 m!12633))

(declare-fun m!12635 () Bool)

(assert (=> start!1665 m!12635))

(declare-fun m!12637 () Bool)

(assert (=> b!8376 m!12637))

(declare-fun m!12639 () Bool)

(assert (=> b!8367 m!12639))

(declare-fun m!12641 () Bool)

(assert (=> b!8375 m!12641))

(assert (=> b!8375 m!12641))

(declare-fun m!12643 () Bool)

(assert (=> b!8375 m!12643))

(declare-fun m!12645 () Bool)

(assert (=> b!8369 m!12645))

(assert (=> b!8369 m!12645))

(declare-fun m!12647 () Bool)

(assert (=> b!8369 m!12647))

(declare-fun m!12649 () Bool)

(assert (=> b!8366 m!12649))

(assert (=> b!8366 m!12649))

(declare-fun m!12651 () Bool)

(assert (=> b!8366 m!12651))

(declare-fun m!12653 () Bool)

(assert (=> b!8362 m!12653))

(assert (=> b!8362 m!12645))

(assert (=> b!8362 m!12649))

(declare-fun m!12655 () Bool)

(assert (=> b!8362 m!12655))

(declare-fun m!12657 () Bool)

(assert (=> b!8362 m!12657))

(declare-fun m!12659 () Bool)

(assert (=> b!8362 m!12659))

(declare-fun m!12661 () Bool)

(assert (=> b!8362 m!12661))

(declare-fun m!12663 () Bool)

(assert (=> b!8362 m!12663))

(assert (=> b!8362 m!12659))

(declare-fun m!12665 () Bool)

(assert (=> b!8362 m!12665))

(assert (=> b!8362 m!12641))

(declare-fun m!12667 () Bool)

(assert (=> b!8362 m!12667))

(declare-fun m!12669 () Bool)

(assert (=> b!8362 m!12669))

(declare-fun m!12671 () Bool)

(assert (=> b!8362 m!12671))

(assert (=> b!8373 m!12655))

(assert (=> b!8373 m!12655))

(declare-fun m!12673 () Bool)

(assert (=> b!8373 m!12673))

(declare-fun m!12675 () Bool)

(assert (=> b!8374 m!12675))

(assert (=> b!8365 m!12653))

(assert (=> b!8365 m!12653))

(declare-fun m!12677 () Bool)

(assert (=> b!8365 m!12677))

(declare-fun m!12679 () Bool)

(assert (=> b!8363 m!12679))

(check-sat (not b!8374) (not b!8366) (not start!1665) (not b!8373) (not b!8362) (not b!8369) (not b!8375) (not b!8376) (not b!8365) (not b!8363) (not b!8367))
(check-sat)
