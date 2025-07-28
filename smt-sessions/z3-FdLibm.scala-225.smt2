; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1319 () Bool)

(assert start!1319)

(declare-fun res!5213 () Bool)

(declare-fun e!3398 () Bool)

(assert (=> start!1319 (=> (not res!5213) (not e!3398))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1319 (= res!5213 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1319 e!3398))

(assert (=> start!1319 true))

(declare-datatypes ((array!544 0))(
  ( (array!545 (arr!243 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!243 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!544)

(declare-fun array_inv!193 (array!544) Bool)

(assert (=> start!1319 (array_inv!193 xx!37)))

(declare-fun b!6385 () Bool)

(declare-fun res!5212 () Bool)

(assert (=> b!6385 (=> (not res!5212) (not e!3398))))

(declare-fun xxInv!0 (array!544) Bool)

(assert (=> b!6385 (= res!5212 (xxInv!0 xx!37))))

(declare-fun b!6386 () Bool)

(declare-fun lt!3366 () (_ BitVec 32))

(assert (=> b!6386 (= e!3398 (not (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3366 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3366) #b00000000000000000000000000000001))) #b00000000000000000000000000000000)))))

(assert (=> b!6386 (= lt!3366 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1319 res!5213) b!6385))

(assert (= (and b!6385 res!5212) b!6386))

(declare-fun m!11815 () Bool)

(assert (=> start!1319 m!11815))

(declare-fun m!11817 () Bool)

(assert (=> b!6385 m!11817))

(check-sat (not start!1319) (not b!6385))
(check-sat)
