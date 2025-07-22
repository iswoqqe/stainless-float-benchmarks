; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1307 () Bool)

(assert start!1307)

(declare-fun res!4907 () Bool)

(declare-fun e!3360 () Bool)

(assert (=> start!1307 (=> (not res!4907) (not e!3360))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1307 (= res!4907 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1307 e!3360))

(assert (=> start!1307 true))

(declare-datatypes ((array!552 0))(
  ( (array!553 (arr!248 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!248 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!552)

(declare-fun array_inv!198 (array!552) Bool)

(assert (=> start!1307 (array_inv!198 xx!37)))

(declare-fun b!6050 () Bool)

(declare-fun res!4908 () Bool)

(assert (=> b!6050 (=> (not res!4908) (not e!3360))))

(declare-fun xxInv!0 (array!552) Bool)

(assert (=> b!6050 (= res!4908 (xxInv!0 xx!37))))

(declare-fun b!6051 () Bool)

(declare-fun lt!3311 () (_ BitVec 32))

(assert (=> b!6051 (= e!3360 (and (not (= (bvand e!10 #b10000000000000000000000000000000) (bvand lt!3311 #b10000000000000000000000000000000))) (not (= (bvand e!10 #b10000000000000000000000000000000) (bvand (bvsub e!10 lt!3311) #b10000000000000000000000000000000)))))))

(declare-fun lt!3312 () (_ BitVec 32))

(assert (=> b!6051 (= lt!3311 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3312 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3312) #b00000000000000000000000000000001)))))

(assert (=> b!6051 (= lt!3312 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1307 res!4907) b!6050))

(assert (= (and b!6050 res!4908) b!6051))

(declare-fun m!10013 () Bool)

(assert (=> start!1307 m!10013))

(declare-fun m!10015 () Bool)

(assert (=> b!6050 m!10015))

(check-sat (not start!1307) (not b!6050))
(check-sat)
