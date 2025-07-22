; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3193 () Bool)

(assert start!3193)

(declare-datatypes ((array!1452 0))(
  ( (array!1453 (arr!638 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!638 (_ BitVec 32))) )
))
(declare-fun fq!41 () array!1452)

(assert (=> start!3193 (and (= (size!638 fq!41) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!638 fq!41) #b00000000000000000000000000000000)) (fp.leq (select (arr!638 fq!41) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!638 fq!41) #b00000000000000000000000000000001)) (fp.leq (select (arr!638 fq!41) #b00000000000000000000000000000001) (fp #b0 #b01111101000 #b0001101000100000100011001001010011001110101111100000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!638 fq!41) #b00000000000000000000000000000010)) (fp.leq (select (arr!638 fq!41) #b00000000000000000000000000000010) (fp #b0 #b01111010000 #b1100110001001011101000011101001010011001111110100000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!638 fq!41) #b00000000000000000000000000000011)) (bvsge #b00000000000000000000000000000011 (size!638 fq!41)))))

(declare-fun array_inv!586 (array!1452) Bool)

(assert (=> start!3193 (array_inv!586 fq!41)))

(declare-fun bs!3570 () Bool)

(assert (= bs!3570 start!3193))

(declare-fun m!29013 () Bool)

(assert (=> bs!3570 m!29013))

(declare-fun m!29015 () Bool)

(assert (=> bs!3570 m!29015))

(declare-fun m!29017 () Bool)

(assert (=> bs!3570 m!29017))

(declare-fun m!29019 () Bool)

(assert (=> bs!3570 m!29019))

(declare-fun m!29021 () Bool)

(assert (=> bs!3570 m!29021))

(push 1)

(assert (not start!3193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

