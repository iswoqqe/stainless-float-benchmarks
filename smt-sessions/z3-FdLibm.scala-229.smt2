; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1305 () Bool)

(assert start!1305)

(declare-fun res!4901 () Bool)

(declare-fun e!3353 () Bool)

(assert (=> start!1305 (=> (not res!4901) (not e!3353))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1305 (= res!4901 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1305 e!3353))

(assert (=> start!1305 true))

(declare-datatypes ((array!550 0))(
  ( (array!551 (arr!247 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!247 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!550)

(declare-fun array_inv!197 (array!550) Bool)

(assert (=> start!1305 (array_inv!197 xx!37)))

(declare-fun b!6044 () Bool)

(declare-fun res!4902 () Bool)

(assert (=> b!6044 (=> (not res!4902) (not e!3353))))

(declare-fun xxInv!0 (array!550) Bool)

(assert (=> b!6044 (= res!4902 (xxInv!0 xx!37))))

(declare-fun b!6045 () Bool)

(declare-fun lt!3305 () (_ BitVec 32))

(assert (=> b!6045 (= e!3353 (not (= lt!3305 (bvsdiv (bvmul #b00000000000000000000000000011000 lt!3305) #b00000000000000000000000000011000))))))

(declare-fun lt!3306 () (_ BitVec 32))

(assert (=> b!6045 (= lt!3305 (bvadd (ite (bvslt lt!3306 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3306) #b00000000000000000000000000000001))))

(assert (=> b!6045 (= lt!3306 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1305 res!4901) b!6044))

(assert (= (and b!6044 res!4902) b!6045))

(declare-fun m!10009 () Bool)

(assert (=> start!1305 m!10009))

(declare-fun m!10011 () Bool)

(assert (=> b!6044 m!10011))

(check-sat (not b!6044) (not start!1305))
(check-sat)
