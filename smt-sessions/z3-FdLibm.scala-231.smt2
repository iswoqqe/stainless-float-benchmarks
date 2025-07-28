; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1335 () Bool)

(assert start!1335)

(declare-fun res!5251 () Bool)

(declare-fun e!3436 () Bool)

(assert (=> start!1335 (=> (not res!5251) (not e!3436))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1335 (= res!5251 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1335 e!3436))

(assert (=> start!1335 true))

(declare-datatypes ((array!557 0))(
  ( (array!558 (arr!249 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!249 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!557)

(declare-fun array_inv!199 (array!557) Bool)

(assert (=> start!1335 (array_inv!199 xx!37)))

(declare-fun b!6424 () Bool)

(declare-fun res!5252 () Bool)

(assert (=> b!6424 (=> (not res!5252) (not e!3436))))

(declare-fun xxInv!0 (array!557) Bool)

(assert (=> b!6424 (= res!5252 (xxInv!0 xx!37))))

(declare-fun b!6425 () Bool)

(declare-fun lt!3387 () (_ BitVec 32))

(assert (=> b!6425 (= e!3436 false)))

(assert (=> b!6425 (= lt!3387 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1335 res!5251) b!6424))

(assert (= (and b!6424 res!5252) b!6425))

(declare-fun m!11841 () Bool)

(assert (=> start!1335 m!11841))

(declare-fun m!11843 () Bool)

(assert (=> b!6424 m!11843))

(check-sat (not start!1335) (not b!6424))
(check-sat)
