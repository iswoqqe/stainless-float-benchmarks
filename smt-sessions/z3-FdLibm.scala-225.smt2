; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1293 () Bool)

(assert start!1293)

(declare-fun res!4875 () Bool)

(declare-fun e!3326 () Bool)

(assert (=> start!1293 (=> (not res!4875) (not e!3326))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1293 (= res!4875 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1293 e!3326))

(assert (=> start!1293 true))

(declare-datatypes ((array!541 0))(
  ( (array!542 (arr!243 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!243 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!541)

(declare-fun array_inv!193 (array!541) Bool)

(assert (=> start!1293 (array_inv!193 xx!37)))

(declare-fun b!6017 () Bool)

(declare-fun res!4874 () Bool)

(assert (=> b!6017 (=> (not res!4874) (not e!3326))))

(declare-fun xxInv!0 (array!541) Bool)

(assert (=> b!6017 (= res!4874 (xxInv!0 xx!37))))

(declare-fun b!6018 () Bool)

(declare-fun lt!3294 () (_ BitVec 32))

(assert (=> b!6018 (= e!3326 (not (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3294 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3294) #b00000000000000000000000000000001))) #b00000000000000000000000000000000)))))

(assert (=> b!6018 (= lt!3294 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1293 res!4875) b!6017))

(assert (= (and b!6017 res!4874) b!6018))

(declare-fun m!9991 () Bool)

(assert (=> start!1293 m!9991))

(declare-fun m!9993 () Bool)

(assert (=> b!6017 m!9993))

(check-sat (not b!6017) (not start!1293))
(check-sat)
