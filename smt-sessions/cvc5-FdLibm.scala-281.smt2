; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1845 () Bool)

(assert start!1845)

(declare-fun res!8320 () Bool)

(declare-fun e!5241 () Bool)

(assert (=> start!1845 (=> (not res!8320) (not e!5241))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1845 (= res!8320 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1845 e!5241))

(assert (=> start!1845 true))

(declare-datatypes ((array!692 0))(
  ( (array!693 (arr!299 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!299 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!692)

(declare-fun array_inv!249 (array!692) Bool)

(assert (=> start!1845 (array_inv!249 xx!44)))

(declare-fun f!58 () array!692)

(assert (=> start!1845 (array_inv!249 f!58)))

(declare-fun b!10055 () Bool)

(declare-fun e!5240 () Bool)

(assert (=> b!10055 (= e!5241 e!5240)))

(declare-fun res!8319 () Bool)

(assert (=> b!10055 (=> (not res!8319) (not e!5240))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4736 () (_ BitVec 32))

(declare-fun lt!4735 () (_ BitVec 32))

(assert (=> b!10055 (= res!8319 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4735 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4735) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (bvsle i!179 (bvadd lt!4736 jz!32 #b00000000000000000000000000000001))))))

(assert (=> b!10055 (= lt!4735 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!10055 (= lt!4736 (bvsub (size!299 xx!44) #b00000000000000000000000000000001))))

(declare-fun b!10054 () Bool)

(declare-fun res!8321 () Bool)

(assert (=> b!10054 (=> (not res!8321) (not e!5241))))

(declare-fun xxInv!0 (array!692) Bool)

(assert (=> b!10054 (= res!8321 (xxInv!0 xx!44))))

(declare-fun b!10057 () Bool)

(assert (=> b!10057 (= e!5240 (and (bvsle i!179 (bvadd lt!4736 jz!32)) (let ((i!181 (bvadd i!179 #b00000000000000000000000000000001))) (and (bvsle i!181 (bvadd lt!4736 jz!32)) (let ((tmp!177 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))) (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt tmp!177 #b00000000000000000000000000000000) #b00000000000000000000000000000000 tmp!177) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsgt i!181 (bvadd (bvsub (size!299 xx!44) #b00000000000000000000000000000001) jz!32))))))))))

(declare-fun b!10056 () Bool)

(declare-fun res!8322 () Bool)

(assert (=> b!10056 (=> (not res!8322) (not e!5240))))

(declare-fun fInv!0 (array!692) Bool)

(assert (=> b!10056 (= res!8322 (fInv!0 f!58))))

(assert (= (and start!1845 res!8320) b!10054))

(assert (= (and b!10054 res!8321) b!10055))

(assert (= (and b!10055 res!8319) b!10056))

(assert (= (and b!10056 res!8322) b!10057))

(declare-fun m!17955 () Bool)

(assert (=> start!1845 m!17955))

(declare-fun m!17957 () Bool)

(assert (=> start!1845 m!17957))

(declare-fun m!17959 () Bool)

(assert (=> b!10054 m!17959))

(declare-fun m!17961 () Bool)

(assert (=> b!10056 m!17961))

(push 1)

(assert (not b!10056))

(assert (not b!10054))

(assert (not start!1845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

