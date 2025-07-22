; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1309 () Bool)

(assert start!1309)

(declare-fun res!4913 () Bool)

(declare-fun e!3365 () Bool)

(assert (=> start!1309 (=> (not res!4913) (not e!3365))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1309 (= res!4913 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1309 e!3365))

(assert (=> start!1309 true))

(declare-datatypes ((array!554 0))(
  ( (array!555 (arr!249 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!249 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!554)

(declare-fun array_inv!199 (array!554) Bool)

(assert (=> start!1309 (array_inv!199 xx!37)))

(declare-fun b!6056 () Bool)

(declare-fun res!4914 () Bool)

(assert (=> b!6056 (=> (not res!4914) (not e!3365))))

(declare-fun xxInv!0 (array!554) Bool)

(assert (=> b!6056 (= res!4914 (xxInv!0 xx!37))))

(declare-fun b!6057 () Bool)

(declare-fun lt!3315 () (_ BitVec 32))

(assert (=> b!6057 (= e!3365 false)))

(assert (=> b!6057 (= lt!3315 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1309 res!4913) b!6056))

(assert (= (and b!6056 res!4914) b!6057))

(declare-fun m!10017 () Bool)

(assert (=> start!1309 m!10017))

(declare-fun m!10019 () Bool)

(assert (=> b!6056 m!10019))

(check-sat (not start!1309) (not b!6056))
(check-sat)
