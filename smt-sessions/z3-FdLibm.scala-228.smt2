; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1303 () Bool)

(assert start!1303)

(declare-fun res!4895 () Bool)

(declare-fun e!3348 () Bool)

(assert (=> start!1303 (=> (not res!4895) (not e!3348))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1303 (= res!4895 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1303 e!3348))

(assert (=> start!1303 true))

(declare-datatypes ((array!548 0))(
  ( (array!549 (arr!246 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!246 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!548)

(declare-fun array_inv!196 (array!548) Bool)

(assert (=> start!1303 (array_inv!196 xx!37)))

(declare-fun b!6038 () Bool)

(declare-fun res!4896 () Bool)

(assert (=> b!6038 (=> (not res!4896) (not e!3348))))

(declare-fun xxInv!0 (array!548) Bool)

(assert (=> b!6038 (= res!4896 (xxInv!0 xx!37))))

(declare-fun b!6039 () Bool)

(declare-fun lt!3299 () (_ BitVec 32))

(assert (=> b!6039 (= e!3348 (and (= (bvand lt!3299 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lt!3299 #b10000000000000000000000000000000) (bvand (bvadd lt!3299 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun lt!3300 () (_ BitVec 32))

(assert (=> b!6039 (= lt!3299 (ite (bvslt lt!3300 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3300))))

(assert (=> b!6039 (= lt!3300 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1303 res!4895) b!6038))

(assert (= (and b!6038 res!4896) b!6039))

(declare-fun m!10005 () Bool)

(assert (=> start!1303 m!10005))

(declare-fun m!10007 () Bool)

(assert (=> b!6038 m!10007))

(check-sat (not start!1303) (not b!6038))
(check-sat)
