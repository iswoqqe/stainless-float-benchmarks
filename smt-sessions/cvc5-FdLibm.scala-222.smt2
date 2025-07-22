; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1335 () Bool)

(assert start!1335)

(declare-fun res!5173 () Bool)

(declare-fun e!3351 () Bool)

(assert (=> start!1335 (=> (not res!5173) (not e!3351))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1335 (= res!5173 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1335 e!3351))

(assert (=> start!1335 true))

(declare-datatypes ((array!542 0))(
  ( (array!543 (arr!240 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!240 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!542)

(declare-fun array_inv!190 (array!542) Bool)

(assert (=> start!1335 (array_inv!190 xx!37)))

(declare-fun b!6336 () Bool)

(declare-fun res!5174 () Bool)

(assert (=> b!6336 (=> (not res!5174) (not e!3351))))

(declare-fun xxInv!0 (array!542) Bool)

(assert (=> b!6336 (= res!5174 (xxInv!0 xx!37))))

(declare-fun lt!3317 () (_ BitVec 32))

(declare-fun b!6337 () Bool)

(assert (=> b!6337 (= e!3351 (and (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3317 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3317) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (let ((i!161 #b00000000000000000000000000000000)) (and (bvsle i!161 (bvadd (bvsub (size!240 xx!37) #b00000000000000000000000000000001) jz!27)) (let ((tmp!156 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))) (and (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt tmp!156 #b00000000000000000000000000000000) #b00000000000000000000000000000000 tmp!156) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsgt i!161 (bvadd (bvsub (size!240 xx!37) #b00000000000000000000000000000001) jz!27))))))))))

(assert (=> b!6337 (= lt!3317 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1335 res!5173) b!6336))

(assert (= (and b!6336 res!5174) b!6337))

(declare-fun m!12283 () Bool)

(assert (=> start!1335 m!12283))

(declare-fun m!12285 () Bool)

(assert (=> b!6336 m!12285))

(push 1)

(assert (not b!6336))

(assert (not start!1335))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

