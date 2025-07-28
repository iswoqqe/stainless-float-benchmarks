; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1329 () Bool)

(assert start!1329)

(declare-fun res!5233 () Bool)

(declare-fun e!3418 () Bool)

(assert (=> start!1329 (=> (not res!5233) (not e!3418))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1329 (= res!5233 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1329 e!3418))

(assert (=> start!1329 true))

(declare-datatypes ((array!551 0))(
  ( (array!552 (arr!246 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!246 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!551)

(declare-fun array_inv!196 (array!551) Bool)

(assert (=> start!1329 (array_inv!196 xx!37)))

(declare-fun b!6406 () Bool)

(declare-fun res!5234 () Bool)

(assert (=> b!6406 (=> (not res!5234) (not e!3418))))

(declare-fun xxInv!0 (array!551) Bool)

(assert (=> b!6406 (= res!5234 (xxInv!0 xx!37))))

(declare-fun b!6407 () Bool)

(declare-fun lt!3372 () (_ BitVec 32))

(assert (=> b!6407 (= e!3418 (and (= (bvand lt!3372 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lt!3372 #b10000000000000000000000000000000) (bvand (bvadd lt!3372 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!3371 () (_ BitVec 32))

(assert (=> b!6407 (= lt!3372 (ite (bvslt lt!3371 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3371))))

(assert (=> b!6407 (= lt!3371 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1329 res!5233) b!6406))

(assert (= (and b!6406 res!5234) b!6407))

(declare-fun m!11829 () Bool)

(assert (=> start!1329 m!11829))

(declare-fun m!11831 () Bool)

(assert (=> b!6406 m!11831))

(check-sat (not start!1329) (not b!6406))
(check-sat)
