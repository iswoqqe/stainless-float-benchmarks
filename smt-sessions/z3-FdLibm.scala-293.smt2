; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1727 () Bool)

(assert start!1727)

(declare-fun b!8993 () Bool)

(declare-fun res!7384 () Bool)

(declare-fun e!5073 () Bool)

(assert (=> b!8993 (=> (not res!7384) (not e!5073))))

(declare-datatypes ((array!705 0))(
  ( (array!706 (arr!311 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!311 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!705)

(declare-fun xxInv!0 (array!705) Bool)

(assert (=> b!8993 (= res!7384 (xxInv!0 xx!44))))

(declare-fun b!8995 () Bool)

(declare-fun res!7385 () Bool)

(declare-fun e!5075 () Bool)

(assert (=> b!8995 (=> (not res!7385) (not e!5075))))

(declare-fun f!58 () array!705)

(declare-fun fInv!0 (array!705) Bool)

(assert (=> b!8995 (= res!7385 (fInv!0 f!58))))

(declare-fun res!7387 () Bool)

(assert (=> start!1727 (=> (not res!7387) (not e!5073))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1727 (= res!7387 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1727 e!5073))

(assert (=> start!1727 true))

(declare-fun array_inv!261 (array!705) Bool)

(assert (=> start!1727 (array_inv!261 xx!44)))

(assert (=> start!1727 (array_inv!261 f!58)))

(declare-fun b!8994 () Bool)

(assert (=> b!8994 (= e!5073 e!5075)))

(declare-fun res!7386 () Bool)

(assert (=> b!8994 (=> (not res!7386) (not e!5075))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4528 () (_ BitVec 32))

(declare-fun lt!4529 () (_ BitVec 32))

(assert (=> b!8994 (= res!7386 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd lt!4529 #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4528 jz!32 #b00000000000000000000000000000001))))))

(declare-fun lt!4530 () (_ BitVec 32))

(assert (=> b!8994 (= lt!4529 (ite (bvslt lt!4530 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4530))))

(assert (=> b!8994 (= lt!4530 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!8994 (= lt!4528 (bvsub (size!311 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!8996 () Bool)

(assert (=> b!8996 (= e!5075 (and (bvsle i!179 (bvadd lt!4528 jz!32)) (bvsge (bvadd (bvsub lt!4529 lt!4528) i!179) #b00000000000000000000000000000000) (let ((ix!141 (bvadd (bvsub lt!4529 lt!4528) i!179))) (or (bvslt ix!141 #b00000000000000000000000000000000) (bvsge ix!141 #b00000000000000000000000001000010)))))))

(assert (= (and start!1727 res!7387) b!8993))

(assert (= (and b!8993 res!7384) b!8994))

(assert (= (and b!8994 res!7386) b!8995))

(assert (= (and b!8995 res!7385) b!8996))

(declare-fun m!13427 () Bool)

(assert (=> b!8993 m!13427))

(declare-fun m!13429 () Bool)

(assert (=> b!8995 m!13429))

(declare-fun m!13431 () Bool)

(assert (=> start!1727 m!13431))

(declare-fun m!13433 () Bool)

(assert (=> start!1727 m!13433))

(check-sat (not b!8995) (not b!8993) (not start!1727))
(check-sat)
