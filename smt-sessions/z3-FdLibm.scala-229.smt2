; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1331 () Bool)

(assert start!1331)

(declare-fun res!5239 () Bool)

(declare-fun e!3424 () Bool)

(assert (=> start!1331 (=> (not res!5239) (not e!3424))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1331 (= res!5239 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1331 e!3424))

(assert (=> start!1331 true))

(declare-datatypes ((array!553 0))(
  ( (array!554 (arr!247 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!247 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!553)

(declare-fun array_inv!197 (array!553) Bool)

(assert (=> start!1331 (array_inv!197 xx!37)))

(declare-fun b!6412 () Bool)

(declare-fun res!5240 () Bool)

(assert (=> b!6412 (=> (not res!5240) (not e!3424))))

(declare-fun xxInv!0 (array!553) Bool)

(assert (=> b!6412 (= res!5240 (xxInv!0 xx!37))))

(declare-fun b!6413 () Bool)

(declare-fun lt!3378 () (_ BitVec 32))

(assert (=> b!6413 (= e!3424 (not (= lt!3378 (bvsdiv (bvmul #b00000000000000000000000000011000 lt!3378) #b00000000000000000000000000011000))))))

(declare-fun lt!3377 () (_ BitVec 32))

(assert (=> b!6413 (= lt!3378 (bvadd (ite (bvslt lt!3377 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3377) #b00000000000000000000000000000001))))

(assert (=> b!6413 (= lt!3377 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1331 res!5239) b!6412))

(assert (= (and b!6412 res!5240) b!6413))

(declare-fun m!11833 () Bool)

(assert (=> start!1331 m!11833))

(declare-fun m!11835 () Bool)

(assert (=> b!6412 m!11835))

(check-sat (not b!6412) (not start!1331))
(check-sat)
