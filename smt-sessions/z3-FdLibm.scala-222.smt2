; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1297 () Bool)

(assert start!1297)

(declare-fun res!4958 () Bool)

(declare-fun e!3294 () Bool)

(assert (=> start!1297 (=> (not res!4958) (not e!3294))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1297 (= res!4958 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1297 e!3294))

(assert (=> start!1297 true))

(declare-datatypes ((array!537 0))(
  ( (array!538 (arr!240 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!240 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!537)

(declare-fun array_inv!190 (array!537) Bool)

(assert (=> start!1297 (array_inv!190 xx!37)))

(declare-fun b!6090 () Bool)

(declare-fun res!4957 () Bool)

(assert (=> b!6090 (=> (not res!4957) (not e!3294))))

(declare-fun xxInv!0 (array!537) Bool)

(assert (=> b!6090 (= res!4957 (xxInv!0 xx!37))))

(declare-fun lt!3261 () (_ BitVec 32))

(declare-fun b!6091 () Bool)

(assert (=> b!6091 (= e!3294 (and (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3261 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3261) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (let ((i!161 #b00000000000000000000000000000000)) (and (bvsle i!161 (bvadd (bvsub (size!240 xx!37) #b00000000000000000000000000000001) jz!27)) (let ((tmp!156 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))) (and (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt tmp!156 #b00000000000000000000000000000000) #b00000000000000000000000000000000 tmp!156) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsgt i!161 (bvadd (bvsub (size!240 xx!37) #b00000000000000000000000000000001) jz!27))))))))))

(assert (=> b!6091 (= lt!3261 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1297 res!4958) b!6090))

(assert (= (and b!6090 res!4957) b!6091))

(declare-fun m!10959 () Bool)

(assert (=> start!1297 m!10959))

(declare-fun m!10961 () Bool)

(assert (=> b!6090 m!10961))

(check-sat (not b!6090) (not start!1297))
(check-sat)
